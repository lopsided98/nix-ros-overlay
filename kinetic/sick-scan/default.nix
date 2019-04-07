
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, visualization-msgs, pcl-ros, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-sick-scan";
  version = "0.0.16";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_scan-release/archive/release/kinetic/sick_scan/0.0.16-0.tar.gz;
    sha256 = "ef68d72413c6f5da0471b658d89a650d3ef3c2c90f0e06c6afc89d97796fcf7f";
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
