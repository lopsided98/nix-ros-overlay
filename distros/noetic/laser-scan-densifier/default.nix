
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-laser-scan-densifier";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/laser_scan_densifier/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "c8de2625fc0cd1bfb821db4c1b6f7100b1fe8c650cd82b64f58f701864e53b30";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
