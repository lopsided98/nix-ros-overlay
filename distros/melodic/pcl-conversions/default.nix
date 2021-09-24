
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl, pcl-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pcl-conversions";
  version = "1.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/perception_pcl-release/archive/release/melodic/pcl_conversions/1.7.3-1.tar.gz";
    name = "1.7.3-1.tar.gz";
    sha256 = "c39fde1d353721e726cb1f09337098545dc97ba9eb3d2360497c429e03d6c0a1";
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
