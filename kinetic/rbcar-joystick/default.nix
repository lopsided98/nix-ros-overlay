
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, geometry-msgs, sensor-msgs, catkin, robotnik-msgs, diagnostic-updater, nav-msgs, std-msgs, diagnostic-msgs, roscpp, ackermann-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-joystick";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_joystick/1.0.4-1.tar.gz;
    sha256 = "db5e41c29c92519214e12465cf9089f5bc7d34fb698daff0aa198ddbba8816c8";
  };

  buildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs diagnostic-updater nav-msgs std-msgs diagnostic-msgs roscpp ackermann-msgs ];
  propagatedBuildInputs = [ std-srvs geometry-msgs sensor-msgs robotnik-msgs diagnostic-updater nav-msgs std-msgs diagnostic-msgs roscpp ackermann-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_joystick package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
