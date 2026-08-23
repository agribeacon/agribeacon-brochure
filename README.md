# AgriBeacon — Exhibition Brochure

Brochure tham dự **AGRI VIETNAM 2026** — Triển lãm Quốc tế lần thứ 6 về Máy móc, Trang thiết bị, Vật tư, Hóa chất & Sản phẩm Nông nghiệp.

> **📅 10–12 / 6 / 2026 · 📍 SECC, TP. Hồ Chí Minh**

A print-ready, 4-page A4 brochure for [agribeacon.tech](https://agribeacon.tech) — autonomous drones, spraying robots, IoT sensors, the "Thần Nông" AI assistant, and the AgriBeacon farm-management platform for perennial-plant farms.

> 📖 **Flipbook tương tác (18 trang) · song ngữ 🇻🇳 / 🇬🇧:** mở `index.html` hoặc xem live trên GitHub Pages — lật từng trang bằng chuột / vuốt trên điện thoại, đổi ngôn ngữ bằng nút **VI / EN** ở góc trên.

---

## 🌐 Song ngữ (Việt / Anh)

- Nút **VI / EN** ở header chuyển toàn bộ brochure (bộ ảnh trang + nút tải PDF + chữ giao diện) sang ngôn ngữ tương ứng — giữ nguyên trang đang đọc.
- Ngôn ngữ mặc định: theo `?lang=vi|en` trên URL → lựa chọn đã lưu (localStorage) → ngôn ngữ trình duyệt → tiếng Việt.
- Bộ ảnh trang nằm ở `assets/pages/vi/` và `assets/pages/en/`; PDF tương ứng là `assets/AgriBeacon-Brochure.pdf` (VI) và `assets/AgriBeacon-Brochure-EN.pdf` (EN).

## 📂 Nội dung repo

| File | Mô tả |
|------|-------|
| `index.html` | **Flipbook lật trang song ngữ** — brochure 18 trang tương tác (StPageFlip), trang chính trên GitHub Pages |
| `assets/pages/vi/page-*.webp` | 18 trang brochure **tiếng Việt** render từ PDF (WebP, 2000px) |
| `assets/pages/en/page-*.webp` | 18 trang brochure **tiếng Anh** render từ PDF (WebP, 2000px) |
| `assets/AgriBeacon-Brochure.pdf` | **Bản PDF 18 trang (VI)** — nguồn của flipbook, nút "Tải PDF" |
| `assets/AgriBeacon-Brochure-EN.pdf` | **Bản PDF 18 trang (EN)** — nút "Download PDF" |
| `print.html` | Brochure 4 trang A4 — tự chứa, in trực tiếp ra PDF |
| `dist/agribeacon-brochure.pdf` | Bản PDF in sẵn (A4, 4 trang) — gửi nhà in |
| `assets/logo-mark.svg` | Logo mark AgriBeacon (lấy từ favicon chính thức) |
| `assets/qr-website.svg` | Mã QR dẫn về agribeacon.tech |
| `build.sh` | Script tái tạo PDF A4 từ `print.html` bằng headless Chrome |

## 🗂 Cấu trúc 4 trang

1. **Bìa** — logo, tagline, headline, ribbon triển lãm AGRI VIETNAM 2026.
2. **Hệ sinh thái giải pháp** — 6 nhóm: Drone tự hành · Robot phun thuốc · Cảm biến IoT · Trợ lý AI · Nền tảng quản lý · Số hóa trang trại.
3. **Cách vận hành + Số liệu** — pipeline Sense → Analyze → Act, các chỉ số (60% tiết kiệm hóa chất, 92%+ độ chính xác dự báo…), lợi ích.
4. **Gói giải pháp + Liên hệ** — Starter / Professional / Enterprise, vì sao chọn AgriBeacon, thông tin liên hệ + QR.

## 🖨 Xuất / in PDF

**Cách 1 — có sẵn:** mở `dist/agribeacon-brochure.pdf`.

**Cách 2 — in từ trình duyệt:**
1. Mở `print.html` bằng **Google Chrome**.
2. `Cmd/Ctrl + P` → **Save as PDF**.
3. Khổ giấy **A4**, lề **None**, bật **Background graphics**.

**Cách 3 — tái tạo bằng script:**
```bash
./build.sh
```

### 🔁 Tái tạo ảnh trang flipbook từ PDF

Khi cập nhật brochure, render lại bộ ảnh `assets/pages/{vi,en}/` từ PDF nguồn (cần `poppler` + `webp`):

```bash
# VI
pdftoppm -r 235 -png assets/AgriBeacon-Brochure.pdf /tmp/p
i=0; for f in /tmp/p-*.png; do i=$((i+1)); cwebp -q 82 "$f" -o assets/pages/vi/page-$(printf %02d $i).webp; done
# EN
pdftoppm -r 235 -png assets/AgriBeacon-Brochure-EN.pdf /tmp/q
i=0; for f in /tmp/q-*.png; do i=$((i+1)); cwebp -q 82 "$f" -o assets/pages/en/page-$(printf %02d $i).webp; done
```

> `-r 235` cho trang ~2000px (PDF 613×860 pt). Đổi PDF nhớ render lại đúng số trang (`TOTAL` trong `index.html`).

## 🎨 Brand system (đồng bộ với agribeacon.tech)

- **Xanh lá** `hsl(145 65% 42%)` · **Xanh dương** `hsl(200 85% 55%)` · **Vàng accent** `hsl(45 95% 60%)`
- Font: **Be Vietnam Pro** (tối ưu dấu tiếng Việt)
- Tagline: *Precise Signals. Smarter Sensing. Sustainable Growth.*

## 📞 Liên hệ

- 🌐 agribeacon.tech
- ☎ +84 339 280 135
- 📍 KĐT Geleximco, Hoài Đức, Hà Nội, Việt Nam

---
© 2026 AgriBeacon — Precise Signals. Smarter Sensing. Sustainable Growth.

## Workspace agribeacon-ws

Repo này là một phần của workspace [agribeacon-ws](https://github.com/agribeacon/agribeacon-ws): clone repo đó làm thư mục cha rồi chạy `scripts/clone-all.sh` để kéo toàn bộ repo của công ty về đúng cấu trúc. Quy ước chung cho người + AI agent (Claude Code, Codex, ...) nằm ở `AGENTS.md`/`CLAUDE.md` của thư mục cha; hệ sutagrow đọc thêm `sutagrow-api/AGENTS.md`.
