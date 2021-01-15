
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-manager, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, diff-drive-controller, geometry-msgs, hardware-interface, nodelet, roch-control, roch-description, roch-msgs, roscpp, roslaunch, roslint, sensor-msgs, std-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-roch-base";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_base/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "69a3e2f5b61dae7b680d678c9610e2dbe1f31c375f8e15b61c6b978d97f3a280";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ angles controller-manager diagnostic-aggregator diagnostic-msgs diagnostic-updater diff-drive-controller geometry-msgs hardware-interface nodelet roch-control roch-description roch-msgs roscpp sensor-msgs std-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sawyer Roch robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
