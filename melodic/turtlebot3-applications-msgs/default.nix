
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-applications-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications_msgs-release/archive/release/melodic/turtlebot3_applications_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1dc86e6606109d67a3f28c9bb18934265196c0d3b1338722bc8bc4f9454112cf";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service types: custom messages and services for TurtleBot3 Applications packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
