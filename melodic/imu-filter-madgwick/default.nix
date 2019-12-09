
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, dynamic-reconfigure, pluginlib, catkin, tf2, rosunit, tf2-geometry-msgs, nodelet, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-imu-filter-madgwick";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/imu_tools-release/archive/release/melodic/imu_filter_madgwick/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "508edb7c8f11f0bb31e1ed63f2f4825e19fc4ee5c02b1754c48b03347a1eeaed";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib tf2 tf2-geometry-msgs nodelet roscpp tf2-ros ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs message-filters geometry-msgs dynamic-reconfigure pluginlib tf2 tf2-geometry-msgs nodelet roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filter which fuses angular velocities, accelerations, and (optionally) magnetic readings from a generic IMU device into an orientation. Based on code by Sebastian Madgwick, http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
