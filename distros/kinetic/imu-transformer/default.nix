
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-filters, nodelet, roscpp, roslaunch, sensor-msgs, tf, tf2, tf2-ros, tf2-sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-imu-transformer";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_transformer/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "afc108f9723e14a7a7785c2ab92a5bf373c633d304a9c894746fbc85f6e32d2c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-filters nodelet roscpp roslaunch sensor-msgs tf tf2 tf2-ros tf2-sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node/nodelet combination to transform sensor_msgs::Imu data from one frame into another.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
