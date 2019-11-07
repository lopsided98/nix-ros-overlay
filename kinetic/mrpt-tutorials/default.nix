
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-tutorials";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_tutorials/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "0ff96fb7e8569ad234582aa55aafe6d99da32e7ef65d9a353cd78561fa884ab1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tf teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
