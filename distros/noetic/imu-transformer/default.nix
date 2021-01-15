
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-filters, nodelet, roscpp, roslaunch, sensor-msgs, tf, tf2, tf2-ros, tf2-sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-imu-transformer";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/noetic/imu_transformer/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "68cb06d8148e357063eefd74495f78328c6b0056ad7c88c75c0d9289b141ddb2";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet roscpp sensor-msgs tf tf2 tf2-ros tf2-sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
