import path from "path";
import fs from "fs";

export function resolveIconsRoot(): string {
  let dir = process.cwd();

  while (dir !== "/") {
    if (
      fs.existsSync(path.join(dir, "static")) &&
      fs.existsSync(path.join(dir, "animated"))
    ) {
      return dir;
    }
    dir = path.dirname(dir);
  }

  throw new Error("Pasta raiz dos ícones não encontrada.");
}
