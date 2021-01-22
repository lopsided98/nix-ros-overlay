
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, nav-2d-msgs }:
buildRosPackage {
  pname = "ros-kinetic-locomotor-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/locomotor_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8f5e9bc779271f8a36068dbdc3f326660f51f9e60b87342df7426c91e4f9757d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definition for Locomotor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
