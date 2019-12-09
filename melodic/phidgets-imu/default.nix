
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-aggregator, sensor-msgs, diagnostic-msgs, pluginlib, std-msgs, std-srvs, tf, catkin, roscpp, nodelet, imu-filter-madgwick, phidgets-api, roslaunch, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-phidgets-imu";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_imu/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "43c322e37f15a5ae31b5a0695c9243f134528a31e8ebefe92f6022eecd5d3fe5";
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
