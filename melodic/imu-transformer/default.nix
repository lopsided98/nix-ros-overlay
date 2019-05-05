
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2-sensor-msgs, tf2, nodelet, topic-tools, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/imu_transformer/0.2.3-0.tar.gz;
    sha256 = "385d6b98746a58cc8dcc26c189a5a3c9853b553794798cd352ebe3445def8dd3";
  };

  buildInputs = [ sensor-msgs message-filters tf2-ros tf2-sensor-msgs tf2 nodelet topic-tools roslaunch roscpp geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs message-filters roscpp tf2-ros tf2-sensor-msgs tf2 nodelet topic-tools roslaunch tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
