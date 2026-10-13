
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5or6, rclcpp, rviz-common, scenario-execution-interfaces, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-rviz";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_rviz/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "71e15ef1ca7a990c7c9df11e138346f49972100bbdf86081c86eb8fbc1a93b57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-srvs ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs py-trees-ros-interfaces qt5or6.qtbase rclcpp rviz-common scenario-execution-interfaces tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The scenario_execution_rviz package";
    license = with lib.licenses; [ asl20 mit ];
  };
}
