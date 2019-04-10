
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2-sensor-msgs, tf2, nodelet, topic-tools, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/lunar/imu_transformer/0.2.3-0.tar.gz;
    sha256 = "d669126337135f8077e216e55f9a01787aac75815208b5c5d177adba10230917";
  };

  buildInputs = [ sensor-msgs message-filters roscpp tf2-ros tf2-sensor-msgs tf2 topic-tools roslaunch nodelet geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters roscpp tf2-ros tf2-sensor-msgs tf2 nodelet topic-tools roslaunch tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    #license = lib.licenses.GPL;
  };
}
