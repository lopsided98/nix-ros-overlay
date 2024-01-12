
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pcl-conversions";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/noetic/pcl_conversions/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "45306daa50a760bad09b95e2f544068caca7d0a872f4afca5d67237f2d44aa76";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  propagatedBuildInputs = [ eigen pcl pcl-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
