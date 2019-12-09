
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, dynamic-reconfigure, catkin, pcl-conversions, visualization-msgs, roscpp, message-runtime, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-sick-scan";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/kinetic/sick_scan/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "1156e52208690cce3b765d90131e6303dd52182b0cae339f5307a7bb613663ec";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure pcl-conversions visualization-msgs roscpp message-generation diagnostic-updater ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure pcl-conversions visualization-msgs roscpp message-runtime diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of laser scanners.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
