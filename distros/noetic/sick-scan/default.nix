
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, perception-pcl, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-sick-scan";
  version = "1.7.6-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/noetic/sick_scan/1.7.6-1.tar.gz";
    name = "1.7.6-1.tar.gz";
    sha256 = "9525f290f9b4f961f98d615228835cce267794833090f3c37f34192200336d1c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime perception-pcl roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of lidars.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
