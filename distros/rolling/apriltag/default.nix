
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, opencv, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-apriltag";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/rolling/apriltag/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "d6a56291f6c7dc11ddfca6f86011f6cf6dc31cbdd9a8c3306d9faa347cb347eb";
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
