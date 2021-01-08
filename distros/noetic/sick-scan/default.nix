
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, rospy, sensor-msgs, tf, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-scan";
  version = "1.7.8-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/noetic/sick_scan/1.7.8-1.tar.gz";
    name = "1.7.8-1.tar.gz";
    sha256 = "03779ee8c369f4da0eaa8b73bd453ff8994b0c34ce7b89f41b528a31a4666bd6";
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
