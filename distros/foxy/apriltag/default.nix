
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-foxy-apriltag";
  version = "3.1.5-r1";

  src = fetchurl {
    url = "https://github.com/AprilRobotics/apriltag-release/archive/release/foxy/apriltag/3.1.5-1.tar.gz";
    name = "3.1.5-1.tar.gz";
    sha256 = "c7bb3aed55dda58ce94a3749aeaa59938ba15150bd9e9438f1004a0305185d40";
  };

  buildType = "cmake";
  buildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
