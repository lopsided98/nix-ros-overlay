
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, visualization-msgs, pcl-ros, dynamic-reconfigure, roscpp, pcl-conversions }:
buildRosPackage {
  pname = "ros-melodic-sick-scan";
  version = "0.0.16";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_scan-release/archive/release/melodic/sick_scan/0.0.16-0.tar.gz;
    sha256 = "d0c506df63940a7cbee85eb4c56ab229459315184e65e6fa3f9f4aa827fe324a";
  };

  buildInputs = [ sensor-msgs roscpp diagnostic-updater pcl-ros message-generation dynamic-reconfigure visualization-msgs pcl-conversions ];
  propagatedBuildInputs = [ sensor-msgs diagnostic-updater pcl-ros message-runtime visualization-msgs dynamic-reconfigure roscpp pcl-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and SICK MRS series of laser scanners.
    This package is based on the original sick_tim-repository of Martin Günther et al.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
