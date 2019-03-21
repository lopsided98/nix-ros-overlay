
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, schunk-powercube-chain, schunk-libm5api, schunk-description, schunk-sdh, catkin, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-kinetic-schunk-modular-robotics";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_modular_robotics/0.6.12-0.tar.gz;
    sha256 = "41e299fb58e8b556a89b91a5e1c47b9ebd6156cae55dbd53b9afe03d218f4409";
  };

  propagatedBuildInputs = [ schunk-powercube-chain schunk-description schunk-libm5api schunk-simulated-tactile-sensors schunk-sdh ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
