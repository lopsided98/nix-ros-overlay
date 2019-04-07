
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2-sensor-msgs, tf2, nodelet, topic-tools, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.3-0.tar.gz;
    sha256 = "afc108f9723e14a7a7785c2ab92a5bf373c633d304a9c894746fbc85f6e32d2c";
  };

  buildInputs = [ sensor-msgs message-filters roscpp tf2-ros tf2-sensor-msgs tf2 topic-tools roslaunch nodelet geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters roscpp tf2-ros tf2-sensor-msgs tf2 nodelet topic-tools roslaunch tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    #license = lib.licenses.GPL;
  };
}
