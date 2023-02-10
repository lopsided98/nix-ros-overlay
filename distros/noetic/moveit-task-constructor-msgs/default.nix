
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, moveit-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-msgs";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_msgs/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "80fba3c2a652ac9e7c71251a3da269331108aa13f8d688cf033fff1ed11b1d92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime moveit-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for MoveIt Task Pipeline'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
