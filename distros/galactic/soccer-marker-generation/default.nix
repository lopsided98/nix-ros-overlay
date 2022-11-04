
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, soccer-object-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-soccer-marker-generation";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/soccer_visualization-release/archive/release/galactic/soccer_marker_generation/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1e13d7dc88344b3c411dfb4f20a184ae8404680b888aa5bcd8a7021727caa94d";
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
