
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, control-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-teleop-tools-msgs";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/melodic/teleop_tools_msgs/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8e09cf4ead3f0f1f98917472c6c2286a6fc33b2b707978d8919132a70cb3244c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs control-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
