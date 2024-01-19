
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, soccer-object-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-soccer-marker-generation";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_visualization-release/archive/release/iron/soccer_marker_generation/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "e0c73267a04b76d7405253bcec4a379ceea799fe1590dff77bc21b2118ae951d";
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
