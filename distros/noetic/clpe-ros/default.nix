
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clpe, clpe-ros-msgs, cv-bridge, geometry-msgs, image-transport, roscpp, sensor-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-clpe-ros";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/canlab-co/clpe_ros-ros-release/archive/release/noetic/clpe_ros/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f2d304c94819912ddf2cfeea13bf551744e6d4ec71a3016b59f2342698ffc5c0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clpe clpe-ros-msgs cv-bridge geometry-msgs image-transport roscpp sensor-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for CANLAB CLPE-G-NVP2650D'';
    license = with lib.licenses; [ asl20 ];
  };
}
