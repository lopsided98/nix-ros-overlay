
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, python3Packages }:
buildRosPackage {
  pname = "ros-galactic-apriltag";
  version = "3.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag-release/archive/release/galactic/apriltag/3.1.5-1.tar.gz";
    name = "3.1.5-1.tar.gz";
    sha256 = "e40e41d3184b4948b52917e24c2f20dd0ea5ed255f32828fe6ab77284b0c1f1d";
  };

  buildType = "cmake";
  buildInputs = [ python3Packages.numpy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''AprilTag detector library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
