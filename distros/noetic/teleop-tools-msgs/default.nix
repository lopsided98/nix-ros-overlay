
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, control-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-teleop-tools-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/teleop_tools_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8cc7640ebe831d44cbfed52384248636cb2dd9e54c142f70d5fa847143d521e8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs control-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
