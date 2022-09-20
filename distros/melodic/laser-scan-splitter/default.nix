
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-splitter";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/scan_tools-release/archive/release/melodic/laser_scan_splitter/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "9cc0f57c8712d129c8181e2a03c950c39d0199cc8838dd98493815d5b430ce2e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_splitter takes in a LaserScan message and splits it into a number of other LaserScan messages. Each of the resulting laser scans can be assigned an arbitrary coordinate frame, and is published on a separate topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
