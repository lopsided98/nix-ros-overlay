
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, controller-manager, tf, roch-description, nodelet, sensor-msgs, diagnostic-msgs, diff-drive-controller, roch-msgs, diagnostic-aggregator, std-msgs, catkin, roscpp, topic-tools, angles, roslaunch, hardware-interface, roslint, diagnostic-updater, roch-control }:
buildRosPackage {
  pname = "ros-kinetic-roch-base";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_base/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "69a3e2f5b61dae7b680d678c9610e2dbe1f31c375f8e15b61c6b978d97f3a280";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs diagnostic-msgs controller-manager hardware-interface std-msgs roslaunch tf roslint roscpp angles roch-msgs diagnostic-updater ];
  propagatedBuildInputs = [ diagnostic-aggregator sensor-msgs geometry-msgs diagnostic-msgs controller-manager hardware-interface std-msgs tf roch-description topic-tools diff-drive-controller nodelet roscpp angles roch-msgs roch-control diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sawyer Roch robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
