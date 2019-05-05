
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, tf2-geometry-msgs, sensor-msgs, catkin, message-filters, tf2-ros, roscpp, tf2, dynamic-reconfigure, nodelet, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-imu-filter-madgwick";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/uos-gbp/imu_tools-release/archive/release/lunar/imu_filter_madgwick/1.2.0-0.tar.gz;
    sha256 = "39c5484e8bef34201c1bc0b1a3ae57cd72be03e7763ab0479e802509e2d1291f";
  };

  buildInputs = [ pluginlib tf2-geometry-msgs sensor-msgs message-filters roscpp tf2-ros tf2 dynamic-reconfigure nodelet geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pluginlib tf2-geometry-msgs sensor-msgs message-filters roscpp tf2-ros tf2 dynamic-reconfigure nodelet geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
