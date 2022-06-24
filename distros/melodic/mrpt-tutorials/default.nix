
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf2 }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "790ce5371a52bf6051b62aa3665ee1bfc04c11486b5025a641198d1f6e56a104";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ teleop-twist-keyboard tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
