
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp, catkin }:
buildRosPackage {
  pname = "ros-kinetic-laser-scan-publisher-tutorial";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/laser_scan_publisher_tutorial/0.2.3-0.tar.gz;
    sha256 = "240f40c3a13ec6e9b0947b95666f2764eab2fb735ac4bb70a19a2f90dea1e768";
  };

  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The laser_scan_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
