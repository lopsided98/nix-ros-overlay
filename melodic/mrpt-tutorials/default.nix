
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/0.1.22-0.tar.gz;
    sha256 = "d44d72519b395146b2209b8842f4bd4708cac69a6b29b1f3475e7286188bd589";
  };

  propagatedBuildInputs = [ tf teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    #license = lib.licenses.BSD;
  };
}
