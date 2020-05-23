
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rc-common-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/noetic/rc_common_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7a73c3a5ea8e6e1a239c643fd902ad810f607eda0d2d88864bf5ce6daffd5a87";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
