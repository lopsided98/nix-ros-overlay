
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pcl-conversions";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/pcl_conversions/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "21436d920d2c092a6d6a3f935d0822b7052600dd66be2c2e8fdf252b5a23de3b";
  };

  buildType = "catkin";
  checkInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  propagatedBuildInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
