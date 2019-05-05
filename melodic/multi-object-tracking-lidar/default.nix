
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl, sensor-msgs, catkin, cv-bridge, roscpp, pcl-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-multi-object-tracking-lidar";
  version = "1.0.1-r1";

  src = fetchurl {
    url = https://github.com/praveen-palanisamy/multi_object_tracking_lidar-release/archive/release/melodic/multi_object_tracking_lidar/1.0.1-1.tar.gz;
    sha256 = "2c8c139caef500a457297233231fcdb913d3106954789481277d4c028df6219f";
  };

  buildInputs = [ pcl sensor-msgs cv-bridge roscpp pcl-ros visualization-msgs ];
  propagatedBuildInputs = [ pcl sensor-msgs cv-bridge roscpp pcl-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package for Multiple objects detection, tracking and classification from LIDAR scans/point-clouds'';
    license = with lib.licenses; [ mit ];
  };
}
