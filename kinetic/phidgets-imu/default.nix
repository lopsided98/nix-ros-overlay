
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, phidgets-api, pluginlib, sensor-msgs, catkin, roscpp, diagnostic-updater, nodelet, std-msgs, diagnostic-msgs, roslaunch, tf, imu-filter-madgwick, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-imu";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_imu/0.7.7-0.tar.gz;
    sha256 = "5e43933230d057eb5c68dff72db11dd90c5467c5ab25ce88aac33eac33a0e4ab";
  };

  buildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs roslaunch tf ];
  propagatedBuildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs tf imu-filter-madgwick diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
