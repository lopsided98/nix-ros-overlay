
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-urg-c";
  version = "1.0.405";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urg_c-release/archive/release/kinetic/urg_c/1.0.405-0.tar.gz";
    name = "1.0.405-0.tar.gz";
    sha256 = "c22eaaf80de9e57ea9c259f5179741cfef06e96afc49991f578aa5a3908c0bdf";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The urg_c package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
