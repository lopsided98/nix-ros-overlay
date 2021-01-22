
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-apriltag";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/foxy/apriltag/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "f79e5ecb5aa78a3e008bc90b292998de17c294565e5b3008d546610bfd939ef1";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
