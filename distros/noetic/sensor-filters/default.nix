
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, filters, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-sensor-filters";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ctu-vras/sensor_filters-release/archive/release/noetic/sensor_filters/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "38cd48bd09b52a40608b6ed9cc01fa58b4bfef4c51d7a403539bae72e18e4c92";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ filters nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple sensor filter chain nodes and nodelets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
