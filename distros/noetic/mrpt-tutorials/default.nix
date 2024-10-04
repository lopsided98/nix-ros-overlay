
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard, tf2 }:
buildRosPackage {
  pname = "ros-noetic-mrpt-tutorials";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_tutorials/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "297b7f27b0cf34d2b83675dbcdd2e1fdc71cb078ee3277ccf10ebebf82e47b5c";
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
