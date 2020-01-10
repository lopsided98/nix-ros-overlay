
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, control-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-teleop-tools-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/teleop_tools_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "3ef2838d7479e42fc83ac6737bc0df2fd33809dc3c4f87fc8022c1b7545bcbb1";
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
