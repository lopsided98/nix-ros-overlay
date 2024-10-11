
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5, rclcpp, rviz-common, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-humble-scenario-execution-rviz";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/humble/scenario_execution_rviz/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "d91dbbcab21c14ca21b2f40c3537d4ae0aa92b7adf2ca5742aed34a48d4c1810";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake std-srvs ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs py-trees-ros-interfaces qt5.qtbase rclcpp rviz-common scenario-execution-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The scenario_execution_rviz package";
    license = with lib.licenses; [ asl20 mit ];
  };
}
