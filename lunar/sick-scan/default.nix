
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, visualization-msgs, pcl-ros, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-lunar-sick-scan";
  version = "0.0.16";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_scan-release/archive/release/lunar/sick_scan/0.0.16-0.tar.gz;
    sha256 = "51938ccd6b91c990e4b7242e43d4b7ead6b65e7bad8764da20efbcee6c887c71";
  };

  buildInputs = [ diagnostic-updater message-generation pcl-ros dynamic-reconfigure visualization-msgs pcl-conversions sensor-msgs roscpp ];
  propagatedBuildInputs = [ diagnostic-updater message-runtime visualization-msgs pcl-ros dynamic-reconfigure roscpp pcl-conversions sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of laser scanners.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    #license = lib.licenses.BSD;
  };
}
