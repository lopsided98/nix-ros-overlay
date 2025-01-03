
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-navigation, raspimouse-slam }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-slam-navigation";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/jazzy/raspimouse_slam_navigation/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "cf9b44362ea220d7bc99c1b6f69669d2a4ed7a8b3880560142c343d2c2d54f31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raspimouse-navigation raspimouse-slam ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SLAM and navigation packages for Raspberry Pi Mouse V3";
    license = with lib.licenses; [ asl20 ];
  };
}
