
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, sensor-msgs, catkin, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-densifier";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/laser_scan_densifier/0.6.14-1.tar.gz;
    sha256 = "3eb31445aa43cb9a9de7868095cf5d2e7ac104c9ada629cf69245973ac18332b";
  };

  buildInputs = [ sensor-msgs roscpp nodelet ];
  propagatedBuildInputs = [ sensor-msgs roscpp nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
