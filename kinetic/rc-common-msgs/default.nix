
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rc-common-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/kinetic/rc_common_msgs/0.2.1-1.tar.gz;
    sha256 = "9613554e140b10a4db41cbbcf5b00432efebb00d39b0467355bb8f9442a4d05b";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS packages'';
    #license = lib.licenses.BSD;
  };
}
