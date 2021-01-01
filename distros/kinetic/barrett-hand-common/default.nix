
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, barrett-hand-description, catkin }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand-common";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand_common-release/archive/release/kinetic/barrett_hand_common/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "5aca04bf7671298e0ad13194d30283bfd44557101cb7c303711e3083465fde79";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ barrett-hand-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The barrett hand common metapackage contains all the common packages for the Barrett hand'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
