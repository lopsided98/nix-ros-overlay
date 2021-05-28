
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-apriltag";
  version = "3.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/galactic/apriltag/3.1.2-4.tar.gz";
    name = "3.1.2-4.tar.gz";
    sha256 = "a4ddb3b345bbfec5112ada3e7e4bdabeccc435d3af54b03e61f1694427a129f6";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
