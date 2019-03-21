
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-tutorials";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_tutorials/0.1.23-0.tar.gz;
    sha256 = "f31e873bb4a099bfc4e9a811a346c23dda6dcd68f8a40e311e28f648cebe01e3";
  };

  propagatedBuildInputs = [ tf teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    #license = lib.licenses.BSD;
  };
}
