
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, sensor-msgs, catkin, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-densifier";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/laser_scan_densifier/0.6.13-0.tar.gz;
    sha256 = "5cdb1eb64c8c21141017c335944d48e3c9b46f0f6e332c2bbb0c2ea28049bf64";
  };

  buildInputs = [ sensor-msgs roscpp nodelet ];
  propagatedBuildInputs = [ sensor-msgs roscpp nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    #license = lib.licenses.BSD;
  };
}
