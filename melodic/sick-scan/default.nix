
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, visualization-msgs, pcl-ros, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-sick-scan";
  version = "1.3.21";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/melodic/sick_scan/1.3.21-0.tar.gz";
    name = "1.3.21-0.tar.gz";
    sha256 = "dce691bd294f3051310108f8e5f90b2ecfc6d287f2b86fdfbbbded89f18d68eb";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp diagnostic-updater pcl-ros message-generation dynamic-reconfigure visualization-msgs pcl-conversions ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-updater pcl-ros message-runtime visualization-msgs dynamic-reconfigure roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of laser scanners.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
