
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, loki-bringup, loki-demos, loki-description, loki-nav, loki-teleop }:
buildRosPackage {
  pname = "ros-kinetic-loki-robot";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/loki_robot-release/archive/release/kinetic/loki_robot/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "8677ac301049313b9abc88e2e4cc7f17a5f9929264e93f5bccdb81252b0b4953";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ loki-bringup loki-demos loki-description loki-nav loki-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for loki configuration'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
