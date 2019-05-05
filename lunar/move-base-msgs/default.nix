
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-move-base-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_msgs-release/archive/release/lunar/move_base_msgs/1.13.0-0.tar.gz;
    sha256 = "2b7c18923591e5dc65905d4929512035b66738d5dd20fd79c2a4642b42b3731e";
  };

  buildInputs = [ message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
