
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ocean-battery-driver";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/ocean_battery_driver/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "63b43358d280ade2900d4c1c45f06c8ccf5991df5aad1ff7124e2ddf8d8631c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx pr2-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an interface to the Ocean Server Technology Intelligent Battery and Power System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
