
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-densifier";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/laser_scan_densifier/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "01ba3aadc514a2280e928f203ee249467992b0b7bbae708aa4f27a0e09df6bdd";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
