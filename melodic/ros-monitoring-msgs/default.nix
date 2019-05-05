
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-ros-monitoring-msgs";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/ros_monitoring_msgs-release/archive/release/melodic/ros_monitoring_msgs/1.0.0-0.tar.gz;
    sha256 = "3f7de8101df1c96e947d8123e8eef5a129edc09a1e5ce723e9d91409c9cba565";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for publishing monitoring data about ROS systems'';
    license = with lib.licenses; [ asl20 ];
  };
}
