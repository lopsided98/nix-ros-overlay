
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, rospy, sensor-msgs, tf, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sick-scan";
  version = "1.7.8-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/kinetic/sick_scan/1.7.8-1.tar.gz";
    name = "1.7.8-1.tar.gz";
    sha256 = "3f33bea285bd0ad39d5c36eef815a6d0efabe45f9aaee668f7cc44af98951a5d";
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
