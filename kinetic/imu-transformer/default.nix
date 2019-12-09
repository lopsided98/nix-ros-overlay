
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, tf, tf2-sensor-msgs, catkin, roscpp, nodelet, tf2, topic-tools, roslaunch, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "afc108f9723e14a7a7785c2ab92a5bf373c633d304a9c894746fbc85f6e32d2c";
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
