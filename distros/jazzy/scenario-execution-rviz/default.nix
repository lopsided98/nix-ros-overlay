
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, py-trees-ros-interfaces, qt5, rclcpp, rviz-common, scenario-execution-interfaces, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-scenario-execution-rviz";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/scenario_execution-release/archive/release/jazzy/scenario_execution_rviz/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "f94027bb426470673cb413bd4de3ca715fc99451d7d9a94a4735eedbc8190667";
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
