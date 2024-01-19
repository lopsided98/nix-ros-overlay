
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, soccer-object-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-soccer-marker-generation";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_visualization-release/archive/release/humble/soccer_marker_generation/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "8adeb8ff078beabdf8c53b381dbf919ff8beabaf591e414745b6b22905b52382";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp soccer-object-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates rviz display markers from soccer msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
