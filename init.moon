mode_reg =
  name: 'rockspec'
  shebangs: '/rockspec.*$'
  extensions: 'rockspec'
  create: bundle_load('rockspec_mode')

howl.mode.register mode_reg

unload = -> howl.mode.unregister 'rockspec'

return {
  info:
    author: 'Rok Fajfar',
    description: 'rockspec mode',
    license: 'MIT',
  :unload
}
