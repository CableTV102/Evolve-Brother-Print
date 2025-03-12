import { registerPlugin } from '@capacitor/core';

import type { EvoPrintPlugin } from './definitions';

const EvoPrint = registerPlugin<EvoPrintPlugin>('EvoPrint', {
  web: () => import('./web').then((m) => new m.EvoPrintWeb()),
});

export * from './definitions';
export { EvoPrint };
