
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-fadecandy-msgs";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/noetic/fadecandy_msgs/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "d304fd952659e934321b489879180dda5755dfff7e64b68ba7999b8e13db21a3";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
