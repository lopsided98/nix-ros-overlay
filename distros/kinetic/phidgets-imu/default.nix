
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, imu-filter-madgwick, nodelet, phidgets-api, pluginlib, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-imu";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_imu/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "e9e92853b8863c01a6786cf26872f2d251e2f20ddef21ac511c38138b2eaea79";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater imu-filter-madgwick nodelet phidgets-api pluginlib roscpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
