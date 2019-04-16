
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-tutorials";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_tutorials/0.1.24-0.tar.gz;
    sha256 = "77503be354ea6ce0931130935c4b215bb8d68d395b5339014cdd1b39be26e6ce";
  };

  propagatedBuildInputs = [ tf teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    #license = lib.licenses.BSD;
  };
}
