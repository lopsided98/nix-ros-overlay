
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "056e0a6b2e6f66f064975a5d8df023325bc86ac013f6ed4d179b82a3ff369619";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ teleop-twist-keyboard tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
