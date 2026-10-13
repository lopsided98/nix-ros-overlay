
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5or6, rclcpp, rviz-common, scenario-execution-interfaces, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-scenario-execution-rviz";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/lyrical/scenario_execution_rviz/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "4ea78f9d42d11b697e892b862138bdafe665bbbb6a24e728ff8cc26167089bdb";
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
