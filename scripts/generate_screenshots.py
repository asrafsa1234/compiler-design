from pathlib import Path
from PIL import Image, ImageDraw, ImageFont
for folder in sorted(Path(".").glob("Q[0-9][0-9]_*")):
    output = folder / "output.txt"
    if not output.exists():
        continue
    lines = output.read_text(errors="replace").splitlines() or ["(no output)"]
    font_path = "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"
    font = ImageFont.truetype(font_path, 20)
    width = max(920, min(2000, max(len(line) for line in lines) * 13 + 64))
    height = max(180, (len(lines) + 5) * 31)
    im = Image.new("RGB", (width, height), "#111827")
    draw = ImageDraw.Draw(im)
    draw.text((30, 22), folder.name, fill="#93c5fd", font=font)
    draw.text((30, 59), "$ ./program < input.txt", fill="#86efac", font=font)
    for i, line in enumerate(lines):
        draw.text((30, 104 + 31 * i), line, fill="#f9fafb", font=font)
    im.save(folder / "output.png")
