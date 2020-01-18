_gazeboPluginPathHook() {
  addToSearchPath GAZEBO_PLUGIN_PATH "@out@/lib"
}
postHooks+=(_gazeboPluginPathHook)
