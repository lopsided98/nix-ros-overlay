
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, geometry-msgs, mbf-abstract-core, mbf-msgs, mbf-utility, nav-msgs, rclcpp, rclcpp-action, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-mbf-abstract-nav";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/mbf_abstract_nav/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "deabd21ec90442594c67c6264143541d15e4cc2533f493c277951ff3117fa204";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs mbf-abstract-core mbf-msgs mbf-utility nav-msgs rclcpp rclcpp-action std-msgs std-srvs ];

  meta = {
    description = "The mbf_abstract_nav package contains the abstract navigation server implementation of Move Base Flex (MBF). The abstract navigation server is not bound to any map representation. It provides the actions for planning, controlling and recovering. MBF loads all defined plugins at the program start. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions.";
    license = with lib.licenses; [ bsd3 ];
  };
}
