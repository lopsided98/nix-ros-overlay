
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, phidgets-api, pluginlib, sensor-msgs, catkin, roscpp, diagnostic-updater, nodelet, std-msgs, diagnostic-msgs, roslaunch, tf, imu-filter-madgwick, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-imu";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_imu/0.7.9-1.tar.gz;
    sha256 = "94eb73ddd1e44e4887f2938447167510af531e27cb91e3b49611d14b070800da";
  };

  buildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs roslaunch tf ];
  propagatedBuildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs tf imu-filter-madgwick diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
