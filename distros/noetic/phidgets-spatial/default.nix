
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-filter-madgwick, nodelet, phidgets-api, pluginlib, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-spatial";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_spatial/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "17d87ddae46879a5dc801a4385a2581cc928f749870b6aa69ef0705edca948ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ imu-filter-madgwick nodelet phidgets-api pluginlib roscpp roslaunch sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
