
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, boost, catkin, curl, diagnostic-msgs, fetch-auto-dock-msgs, fetch-driver-msgs, libyamlcpp, mk, nav-msgs, power-msgs, python, robot-calibration-msgs, robot-controllers, robot-controllers-interface, rosconsole, roscpp, roscpp-serialization, rospack, rostime, sensor-msgs, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-melodic-fetch-drivers";
  version = "0.8.9-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_drivers/0.8.9-1.tar.gz";
    name = "0.8.9-1.tar.gz";
    sha256 = "21476cf4eb010a51179a0700644ac8a15f5aaa5ccb4d704e9d1d7ab102048f80";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk rospack ];
  propagatedBuildInputs = [ actionlib actionlib-msgs boost curl diagnostic-msgs fetch-auto-dock-msgs fetch-driver-msgs libyamlcpp nav-msgs power-msgs python robot-calibration-msgs robot-controllers robot-controllers-interface rosconsole roscpp roscpp-serialization rostime sensor-msgs urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public fetch_drivers package is a binary only release.

    fetch_drivers contains both the drivers and firmware for the fetch and freight research robots.
    There should be no reason to use these drivers unless you're running on a fetch or a freight research robot.
    This package, is a cmake/make only package which installs the binaries for the drivers and firmware.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
