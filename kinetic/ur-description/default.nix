
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-ur-description";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_description/1.2.1-0.tar.gz;
    sha256 = "08910e8c9a06e842cb5f6fa09e3afd4b0baea03bb716957b65c503c01a427146";
  };

  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Universal UR5/10 robot arms'';
    #license = lib.licenses.BSD;
  };
}
