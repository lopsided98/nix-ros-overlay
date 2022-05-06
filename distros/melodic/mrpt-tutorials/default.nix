
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-tutorials";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_tutorials/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "01d612ea5a187fb104a8d858af95bf27ba9dacdd49f0c6214889e089bd4e80aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ teleop-twist-keyboard tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
