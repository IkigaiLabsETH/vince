# Why Long Pastes Can Be Truncated (and how to avoid it)

When you paste a long article into chat and say "upload:" or "save this:", the saved knowledge file sometimes contains only **part** of what you pasted (often the **tail** of the text). That’s not the upload action dropping content on purpose; the action only ever sees what it receives in **one** message.

## What’s going on

1. **The action sees a single message**  
   UPLOAD runs on `message.content.text` for the **current** message only. It does not automatically merge multiple messages or re-fetch from the client.

2. **Chat clients often limit message size**  
   Many UIs and APIs cap message length (e.g. 4k–32k characters or tokens). If you paste 10k+ words, the client may:
   - Truncate and send only part of the paste (e.g. the last chunk), or
   - Split into several messages so that only one of them triggers UPLOAD.

3. **Result**  
   You can end up with a file that has the right title/source but only a fragment (e.g. the last few sections), with **wordCount** much smaller than the full article.

## How to avoid losing content

| Situation | What to do |
|-----------|------------|
| **Article has a URL** | Prefer **"upload: https://…"** (or paste only the URL). The action uses the summarize CLI to fetch and save the **full** content from the URL. Nothing is lost to client truncation. |
| **YouTube** | Use **"upload: [YouTube URL]"**. We fetch transcript + summary server-side; again, no paste limit. |
| **Long paste, no URL** | Option 1: Send **one** message that starts with `upload:` and paste the full text in the same message (if your client allows that length). Option 2: Send the long content in **one** message, then in the **next** message say **"upload that"** or **"save that"**; the action will try to use the **previous** user message as the content to save. |
| **Very long doc** | Split into multiple uploads with clear titles (e.g. "upload: [Part 1 – Introduction]\n\n...") so each file is complete and findable. |

## If a file was already saved with only a fragment

- Re-upload using the **URL** if the article is online, or  
- Paste again in **one** message (or message 1 = full text, message 2 = "upload that") and ensure the client isn’t truncating (e.g. try a different client or a shorter paste to test).

## Summary

- **We don’t intentionally drop content.** Truncation comes from the **single-message** view and **client/platform message length limits**.
- **Prefer URLs** for long articles so we fetch full content server-side.
- Use **"upload that"** after a long message so the action can use the previous message as the body.
- For very long content without a URL, split into multiple uploads with clear titles.
