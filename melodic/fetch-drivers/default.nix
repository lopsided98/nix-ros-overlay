
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, fetch-driver-msgs, robot-controllers-interface, actionlib, diagnostic-msgs, robot-calibration-msgs, boost, rostime, rospack, mk, power-msgs, catkin, nav-msgs, urdf, robot-controllers, roscpp-serialization, roscpp, python, libyamlcpp, sensor-msgs, urdfdom, curl, fetch-auto-dock-msgs }:
buildRosPackage {
  pname = "ros-melodic-fetch-drivers";
  version = "0.8.6";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_drivers/0.8.6-0.tar.gz;
    sha256 = "bf7c846904d5af4fd6cd3591a534d336436666f15b3e1ec28e25d5c5f5c1c241";
  };

  buildInputs = [ rospack rosconsole actionlib-msgs mk power-msgs fetch-driver-msgs nav-msgs robot-controllers-interface urdf robot-controllers roscpp-serialization actionlib diagnostic-msgs roscpp robot-calibration-msgs python boost libyamlcpp sensor-msgs urdfdom curl fetch-auto-dock-msgs rostime ];
  propagatedBuildInputs = [ rosconsole actionlib-msgs power-msgs fetch-driver-msgs nav-msgs robot-controllers-interface urdf robot-controllers roscpp-serialization actionlib diagnostic-msgs roscpp robot-calibration-msgs python boost libyamlcpp sensor-msgs urdfdom curl fetch-auto-dock-msgs rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public fetch_drivers package is a binary only release.

    fetch_drivers contains both the drivers and firmware for the fetch and freight research robots.
    There should be no reason to use these drivers unless you're running on a fetch or a freight research robot.
    This package, is a cmake/make only package which installs the binaries for the drivers and firmware.'';
    #license = lib.licenses.Proprietary;
  };
}
