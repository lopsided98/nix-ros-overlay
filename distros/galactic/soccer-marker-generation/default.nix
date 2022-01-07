
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, soccer-vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-soccer-marker-generation";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_visualization-release/archive/release/galactic/soccer_marker_generation/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "189d3289374ddeb5078718359cd67e205eab040437466f23015f633fe821c452";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp soccer-vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates rviz display markers from soccer msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
