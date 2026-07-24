
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, geometry-msgs, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, mbf-simple-core, mbf-test-utility, mbf-utility, nav-msgs, pluginlib, rclcpp, rclcpp-action, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mbf-simple-nav";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_simple_nav/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "bbebacadb6de2f44dab9d0a316620683167dbe021d66ce2a5b32b480fb0cb6cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock mbf-test-utility ];
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-abstract-nav mbf-msgs mbf-simple-core mbf-utility nav-msgs pluginlib rclcpp rclcpp-action std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

      It tries to load the defined plugins which implements the defined interfaces in <a href=\"wiki.ros.org/mbf_abstract_core\">mbf_abstract_core</a>.";
    license = with lib.licenses; [ bsd3 ];
  };
}
