
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-ocean-battery-driver";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/ocean_battery_driver/1.1.7-0.tar.gz;
    sha256 = "4a494470bf4da45f24517df66b0c0fea70f79e15c14e6935e00f990d4e23b084";
  };

  buildInputs = [ diagnostic-updater diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ diagnostic-updater diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an interface to the Ocean Server Technology Intelligent Battery and Power System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
