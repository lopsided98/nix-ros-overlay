
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-teleop-twist-keyboard";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/kinetic/teleop_twist_keyboard/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "4eca7edf96be19b211b819707e1aed835fe3d9968fd9c8217fcc1cb9728c1a5d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
