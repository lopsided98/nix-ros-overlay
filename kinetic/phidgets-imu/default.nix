
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, sensor-msgs, diagnostic-msgs, pluginlib, std-msgs, std-srvs, tf, catkin, roscpp, nodelet, imu-filter-madgwick, phidgets-api, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-imu";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_imu/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "94eb73ddd1e44e4887f2938447167510af531e27cb91e3b49611d14b070800da";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs diagnostic-msgs pluginlib std-msgs std-srvs tf nodelet roscpp phidgets-api roslaunch diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-aggregator sensor-msgs diagnostic-msgs imu-filter-madgwick pluginlib std-srvs std-msgs tf nodelet roscpp phidgets-api diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
