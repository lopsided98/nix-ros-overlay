
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-urdf-geometry-parser";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/noetic/urdf_geometry_parser/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "95fe96e01800c4d342fd516366dc6591dcd8cab13a120ec5a61293bbcbde4235";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest xacro ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
