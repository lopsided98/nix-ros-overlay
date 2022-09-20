
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-navigation, raspimouse-slam }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-slam-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_slam_navigation_ros2-release/archive/release/foxy/raspimouse_slam_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a722029f099573d81dc9e1a731199534ef038503579f035b7bbb24971982165d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raspimouse-navigation raspimouse-slam ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''SLAM and navigation packages for Raspberry Pi Mouse V3'';
    license = with lib.licenses; [ asl20 ];
  };
}
