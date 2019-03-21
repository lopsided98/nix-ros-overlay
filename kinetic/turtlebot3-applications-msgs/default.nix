
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-applications-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/turtlebot3_applications_msgs-release/archive/release/kinetic/turtlebot3_applications_msgs/1.0.0-0.tar.gz;
    sha256 = "d95bcf3f16e4f51a49a53708b680fe6635f2e50434d8c9282bdc83204ec3b926";
  };

  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs sensor-msgs message-generation catkin ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 Applications packages'';
    #license = lib.licenses.Apache 2.0;
  };
}
