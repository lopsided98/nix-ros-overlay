
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-pacmod-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/pacmod_msgs/2.3.1-0.tar.gz;
    sha256 = "bd8431a073289ac9c954b7d39840bb1f51b1df67aa6df177a0c6ecb1726fe661";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Message definition files for the PACMod driver'';
    #license = lib.licenses.MIT;
  };
}
