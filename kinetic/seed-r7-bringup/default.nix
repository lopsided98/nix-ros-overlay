
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-bringup";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_bringup/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "28b5cd8d5ca32138f9f5a5eb2cb33c8cdf93170f158fda04804c1287d33f358e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
