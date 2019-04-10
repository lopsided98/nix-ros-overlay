
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, phidgets-api, pluginlib, sensor-msgs, catkin, roscpp, diagnostic-updater, nodelet, std-msgs, diagnostic-msgs, roslaunch, tf, imu-filter-madgwick, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-lunar-phidgets-imu";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_imu/0.7.7-0.tar.gz;
    sha256 = "26939b18d1fd910fdff66148ecf5b7d83e4d61ee34fba7d1178dcd89bdfb6b12";
  };

  buildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs roslaunch tf ];
  propagatedBuildInputs = [ std-srvs phidgets-api pluginlib sensor-msgs roscpp diagnostic-updater nodelet std-msgs diagnostic-msgs tf imu-filter-madgwick diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    #license = lib.licenses.BSD;
  };
}
