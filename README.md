# AgriBeacon — Exhibition Brochure

Brochure tham dự **AGRI VIETNAM 2026** — Triển lãm Quốc tế lần thứ 6 về Máy móc, Trang thiết bị, Vật tư, Hóa chất & Sản phẩm Nông nghiệp.

> **📅 10–12 / 6 / 2026 · 📍 SECC, TP. Hồ Chí Minh**

A print-ready, 4-page A4 brochure for [agribeacon.tech](https://agribeacon.tech) — autonomous drones, spraying robots, IoT sensors, the "Thần Nông" AI assistant, and the AgriBeacon farm-management platform for perennial-plant farms.

> 📖 **Flipbook tương tác (18 trang):** mở `index.html` hoặc xem live trên GitHub Pages — lật từng trang bằng chuột / vuốt trên điện thoại.

---

## 📂 Nội dung repo

| File | Mô tả |
|------|-------|
| `index.html` | **Flipbook lật trang** — brochure 18 trang tương tác (StPageFlip), trang chính trên GitHub Pages |
| `assets/pages/page-*.webp` | 18 trang brochure render từ PDF (WebP, 1400px) cho flipbook |
| `assets/AgriBeacon-Brochure.pdf` | **Bản PDF 18 trang** (nguồn của flipbook) — nút "Tải PDF" |
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
