
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-apriltag";
  version = "3.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/rolling/apriltag/3.2.0-4.tar.gz";
    name = "3.2.0-4.tar.gz";
    sha256 = "5b9b0a0f2c0d232d85f13c4824a6baa42141d04cc8c0f099a2852357ae398c1a";
  };

  buildType = "cmake";
  buildInputs = [ cmake python3Packages.numpy ];
  checkInputs = [ opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
