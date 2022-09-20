
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rostest, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-urdf-geometry-parser";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/melodic/urdf_geometry_parser/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9b68c05013b435ece6b738f89fc436fea59ec3895b15af4e13f9986d89351569";
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
