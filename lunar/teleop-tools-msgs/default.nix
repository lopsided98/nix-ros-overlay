
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-teleop-tools-msgs";
  version = "0.2.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/teleop_tools_msgs/0.2.6-0.tar.gz;
    sha256 = "74deaf8ec25f797e593c086d382cfe04a8e10d9a7b683dfe31ee0c79a2ed6925";
  };

  buildInputs = [ message-generation control-msgs actionlib-msgs ];
  propagatedBuildInputs = [ control-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    #license = lib.licenses.BSD;
  };
}
