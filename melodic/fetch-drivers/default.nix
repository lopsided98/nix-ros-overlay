
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, python, actionlib-msgs, curl, nav-msgs, sensor-msgs, roscpp-serialization, diagnostic-msgs, fetch-auto-dock-msgs, robot-controllers-interface, robot-calibration-msgs, libyamlcpp, rosconsole, fetch-driver-msgs, catkin, roscpp, mk, boost, urdfdom, actionlib, rostime, power-msgs, robot-controllers, rospack }:
buildRosPackage {
  pname = "ros-melodic-fetch-drivers";
  version = "0.8.8-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_drivers/0.8.8-1.tar.gz";
    name = "0.8.8-1.tar.gz";
    sha256 = "1a93f3a08200d27d455c1fffb0d9aaf712183b52e4627161f9c3a65ba5164a62";
  };

  buildType = "catkin";
  buildInputs = [ urdf python actionlib-msgs nav-msgs curl sensor-msgs roscpp-serialization diagnostic-msgs fetch-auto-dock-msgs robot-controllers-interface robot-calibration-msgs libyamlcpp rosconsole fetch-driver-msgs roscpp mk boost urdfdom actionlib rostime power-msgs robot-controllers rospack ];
  propagatedBuildInputs = [ urdf python actionlib-msgs nav-msgs curl sensor-msgs roscpp-serialization diagnostic-msgs fetch-auto-dock-msgs robot-controllers-interface robot-calibration-msgs libyamlcpp rosconsole fetch-driver-msgs roscpp boost urdfdom actionlib rostime power-msgs robot-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public fetch_drivers package is a binary only release.

    fetch_drivers contains both the drivers and firmware for the fetch and freight research robots.
    There should be no reason to use these drivers unless you're running on a fetch or a freight research robot.
    This package, is a cmake/make only package which installs the binaries for the drivers and firmware.'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
