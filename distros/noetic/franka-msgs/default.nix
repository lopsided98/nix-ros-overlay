
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-franka-msgs";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_msgs/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "9e3b6c243b474f240e7ce29139e00e7fa2bba094aab93b3b71967708ef9e804b";
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
