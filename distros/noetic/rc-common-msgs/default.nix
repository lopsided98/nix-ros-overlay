
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-common-msgs";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/noetic/rc_common_msgs/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "7e3eba3d249fe39b358992f4bce414ddda30ac3a4538dee2edee9b90472f5b31";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
