
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-service-pair-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-tutorial-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_tutorial_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "59acd2d2c212159596c47e7fb6703b19c97446c3c105b08ab7f541f999008b8d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-service-pair-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by rocon tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
