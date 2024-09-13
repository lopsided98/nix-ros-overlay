
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf2 }:
buildRosPackage {
  pname = "ros-noetic-mrpt-tutorials";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_tutorials/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "35e2813cda4ed07d65e0b376e1ef99be915b2a230a9365d316cba9607b74179c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ teleop-twist-keyboard tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Example files used as tutorials for MRPT ROS packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
