
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, rospy, sensor-msgs, tf, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-sick-scan";
  version = "1.7.8-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/melodic/sick_scan/1.7.8-1.tar.gz";
    name = "1.7.8-1.tar.gz";
    sha256 = "7ae00d0d3c02e9a67d4eabf411f4c12c417b55a6ff95a2b6b4f6cfe5f4cab693";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime pcl-conversions pcl-ros roscpp rospy sensor-msgs tf tf2 visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of lidars.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
