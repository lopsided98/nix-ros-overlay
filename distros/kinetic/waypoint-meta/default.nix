
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, waypoint-generator, waypoint-touring }:
buildRosPackage {
  pname = "ros-kinetic-waypoint-meta";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/jihoonl/waypoint-release/archive/release/kinetic/waypoint_meta/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "f2c1cd84eb8e63d6d6403ed1074d7873cb30175ea2003e5a9f874a84ccad138e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ waypoint-generator waypoint-touring ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Waypoint Meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
