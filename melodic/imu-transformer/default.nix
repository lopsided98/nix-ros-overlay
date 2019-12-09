
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, tf, tf2-sensor-msgs, catkin, roscpp, nodelet, tf2, topic-tools, roslaunch, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/imu_transformer/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "385d6b98746a58cc8dcc26c189a5a3c9853b553794798cd352ebe3445def8dd3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs tf2-sensor-msgs roscpp nodelet tf2 topic-tools roslaunch tf2-ros ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs tf tf2 tf2-sensor-msgs nodelet roscpp topic-tools roslaunch tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
