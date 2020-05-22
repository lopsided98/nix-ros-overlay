
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rc-common-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs-release/archive/release/kinetic/rc_common_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7b620577c4bdda1766e820a35e16288c3b840e9fc838505662b6651cc0f800dd";
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
