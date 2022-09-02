
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-msgs";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_msgs/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "d59821cbe6934dc85d2720446f7bd9570a69de11e5544b245fa818b0524be498";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_msgs provides messages specific to Franka Emika research robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
