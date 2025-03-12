export interface EvoPrintPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
