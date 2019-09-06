
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, schunk-powercube-chain, schunk-libm5api, schunk-description, schunk-sdh, catkin, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-kinetic-schunk-modular-robotics";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_modular_robotics/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "4b11df3b9679a2d5e0f11a19f5c6ade5d2522043cd76a13ba5ecc64c76ffaab4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ schunk-powercube-chain schunk-libm5api schunk-sdh schunk-description schunk-simulated-tactile-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
