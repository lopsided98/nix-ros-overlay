
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roch-control, roch-safety-controller, catkin, roch-msgs, roch-description, roch-sensorpc, roch-capabilities, roch-base, roch-ftdi }:
buildRosPackage {
  pname = "ros-kinetic-roch-robot";
  version = "2.0.15";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_robot/2.0.15-0.tar.gz";
    name = "2.0.15-0.tar.gz";
    sha256 = "2cb5dcd0974cc1df0aa7a3541ea2759cb1711123a5e0c8f45910ea1664e0d49b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roch-control roch-safety-controller roch-msgs roch-description roch-sensorpc roch-capabilities roch-base roch-ftdi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for SawYer roch robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
