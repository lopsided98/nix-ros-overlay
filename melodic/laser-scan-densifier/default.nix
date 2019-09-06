
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, sensor-msgs, catkin, nodelet }:
buildRosPackage {
  pname = "ros-melodic-laser-scan-densifier";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/laser_scan_densifier/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "f14e3cfe77ca5f18eb72d9bbf4619383f3f6f0cbe4623980b9fffb9f91795c01";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp nodelet ];
  propagatedBuildInputs = [ sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_densifier takes in a LaserScan message and densifies it.
    Node is inspired by laser_scan_sparsifier (http://wiki.ros.org/laser_scan_sparsifier).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
