
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-key-teleop";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/key_teleop/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "eb2a780a6771f9f56569c9e7c5c186a1623ab6e1df367b8e06518363cd8a4639";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A text-based interface to send a robot movement commands'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
