
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "0.1.24";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/0.1.24-0.tar.gz";
    name = "0.1.24-0.tar.gz";
    sha256 = "c5e608015e00a03be1ea0aa3a86e91cab4da37a2ec842f915eaaa2a8930c3e8b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
