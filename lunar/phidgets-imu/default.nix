
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, phidgets-api, pluginlib, sensor-msgs, catkin, roscpp, diagnostic-updater, nodelet, std-msgs, diagnostic-msgs, roslaunch, tf, imu-filter-madgwick, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-lunar-phidgets-imu";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_imu/0.7.8-1.tar.gz;
    sha256 = "d5949b0fd272cee353a1191c956b115b566f9e5a0a90a4ec3ac005e4e1e3a039";
  };

  buildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs roslaunch tf ];
  propagatedBuildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs tf imu-filter-madgwick diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
