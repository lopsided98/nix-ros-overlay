
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-filters, nodelet, pluginlib, roscpp, rosunit, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-imu-filter-madgwick";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/kinetic/imu_filter_madgwick/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "4b6f07cd83da9fd8d60d6edeb43fc83b18fa0b0e1beb824e4e109dfd22988e59";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs message-filters nodelet pluginlib roscpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
