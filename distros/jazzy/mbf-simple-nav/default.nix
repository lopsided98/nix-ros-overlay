
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, geometry-msgs, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, mbf-simple-core, mbf-test-utility, mbf-utility, nav-msgs, pluginlib, rclcpp, rclcpp-action, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mbf-simple-nav";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/mbf_simple_nav/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "11d973dd3790a8a9419607a1305735d5f879b09194eee5c568a677dfa734fc14";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock mbf-test-utility ];
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-abstract-nav mbf-msgs mbf-simple-core mbf-utility nav-msgs pluginlib rclcpp rclcpp-action std-msgs std-srvs tf2 tf2-ros ];

  meta = {
    description = "The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

      It tries to load the defined plugins which implements the defined interfaces in <a href=\"wiki.ros.org/mbf_abstract_core\">mbf_abstract_core</a>.";
    license = with lib.licenses; [ bsd3 ];
  };
}
