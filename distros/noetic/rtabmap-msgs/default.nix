
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-msgs";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_msgs/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "28a72f18bb2a9ddefea31f710368b723175206737246836701d4d0bdfd526faf";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = "RTAB-Map's msgs package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
