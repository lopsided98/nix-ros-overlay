
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-apriltag";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/noetic/apriltag/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "cd865830edbf30f93b897b0b98c3b86d4c5273bceeb5db4e8beba4170d832a4c";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
