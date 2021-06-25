
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-msgs";
  version = "1.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace_2020_release/archive/release/noetic/turtlebot3_autorace_msgs/1.1.0-7.tar.gz";
    name = "1.1.0-7.tar.gz";
    sha256 = "4fce4e1f725b2eb980e9c499c2063fa0aab3c0accfb59017f52f91aece9423e1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlebot3_autorace_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
