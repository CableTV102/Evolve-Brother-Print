import { WebPlugin } from '@capacitor/core';

import type { EvoPrintPlugin } from './definitions';

export class EvoPrintWeb extends WebPlugin implements EvoPrintPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
