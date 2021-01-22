
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, log4cxx, pr2-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-ocean-battery-driver";
  version = "1.1.7";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/kinetic/ocean_battery_driver/1.1.7-0.tar.gz";
    name = "1.1.7-0.tar.gz";
    sha256 = "a222dcefa000b5a33659131ff0657d0704becddd37ad8e7382b69bd7b0e6edb0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater log4cxx pr2-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an interface to the Ocean Server Technology Intelligent Battery and Power System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
