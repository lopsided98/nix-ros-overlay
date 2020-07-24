
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, perception-pcl, roscpp, rospy, sensor-msgs, tf, tf2, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-sick-scan";
  version = "1.7.7-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/melodic/sick_scan/1.7.7-1.tar.gz";
    name = "1.7.7-1.tar.gz";
    sha256 = "5231942525dc4921aff7e18775b90a74a9b944139fab15e487009ef5ebdf01a1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime perception-pcl roscpp rospy sensor-msgs tf tf2 visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of lidars.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
