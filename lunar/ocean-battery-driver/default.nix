
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, diagnostic-msgs, pr2-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-lunar-ocean-battery-driver";
  version = "1.1.7";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/lunar/ocean_battery_driver/1.1.7-0.tar.gz;
    sha256 = "f3dc4418dbdb2d91869b336f99e8d9115d3722126a21a61a2874b51218554bf2";
  };

  buildInputs = [ diagnostic-updater diagnostic-msgs pr2-msgs roscpp log4cxx ];
  propagatedBuildInputs = [ diagnostic-updater diagnostic-msgs pr2-msgs roscpp log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an interface to the Ocean Server Technology Intelligent Battery and Power System.'';
    #license = lib.licenses.BSD;
  };
}
