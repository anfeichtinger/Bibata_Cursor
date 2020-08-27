import { BoundingBox } from "puppeteer";

type AnimatedCursors = Record<string, { frames: number }>;

type AnimatedClip = BoundingBox | undefined;

interface Config {
  staticCursors: string[];
  bitmapsDir: string;
  svgsDir: string;
  animatedCursors: AnimatedCursors;
  animatedClip: AnimatedClip;
}

export { Config, AnimatedCursors, AnimatedClip };
