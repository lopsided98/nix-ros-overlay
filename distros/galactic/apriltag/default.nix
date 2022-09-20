
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-apriltag";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/galactic/apriltag/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "fb172918ad557a8d0c484decf3ce98c17de99d87fd483432636aa28dd1a575fa";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3Packages.numpy ];
  checkInputs = [ opencv ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
