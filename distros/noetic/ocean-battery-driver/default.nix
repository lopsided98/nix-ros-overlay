
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ocean-battery-driver";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/ocean_battery_driver/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "e7a91c5f3b8eacc62bfade5e8bb1bac9d97a185b250da4531c03bf3b442d9bdf";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx pr2-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an interface to the Ocean Server Technology Intelligent Battery and Power System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
