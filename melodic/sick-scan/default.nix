
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, message-generation, sensor-msgs, dynamic-reconfigure, catkin, pcl-conversions, visualization-msgs, roscpp, message-runtime, diagnostic-updater }:
buildRosPackage {
  pname = "ros-melodic-sick-scan";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/melodic/sick_scan/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "652abe26ebf888dc796e5fb5493a11732e3490116caec5ec679cd71d79c4f3d2";
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
