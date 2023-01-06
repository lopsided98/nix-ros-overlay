
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-filter-madgwick, nodelet, phidgets-api, pluginlib, roscpp, roslaunch, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-spatial";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_spatial/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "4b5ca55c76c2ad013a184daa7b436df316f07243c43f4fc63e42080563cd3c3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ imu-filter-madgwick nodelet phidgets-api pluginlib roscpp roslaunch sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
