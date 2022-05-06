
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf }:
buildRosPackage {
  pname = "ros-noetic-mrpt-tutorials";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_tutorials/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ce65c0e46bbcad164c62f87d9441a5a242a1d733296acc750deaf56053468818";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ teleop-twist-keyboard tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Example files used as tutorials for MRPT ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
