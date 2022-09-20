
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-monitoring-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/ros_monitoring_msgs-release/archive/release/melodic/ros_monitoring_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d9215590fe7e1d5c0dadd7a19195db12250e64327bd5423ad6292c0a7e920165";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for publishing monitoring data about ROS systems'';
    license = with lib.licenses; [ asl20 ];
  };
}
