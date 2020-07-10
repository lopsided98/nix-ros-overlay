
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, perception-pcl, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sick-scan";
  version = "1.7.6-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan-release/archive/release/kinetic/sick_scan/1.7.6-1.tar.gz";
    name = "1.7.6-1.tar.gz";
    sha256 = "e738ee00e2332a00bd7185d0c725e59c3515f038c70d38353396b25a9c21388e";
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
