
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-description, schunk-libm5api, schunk-powercube-chain, schunk-sdh, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-kinetic-schunk-modular-robotics";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_modular_robotics/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "703d50e5f0d5d88076ea40020881518bfce7cbc2ecdb9e88b78a348d55907502";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ schunk-description schunk-libm5api schunk-powercube-chain schunk-sdh schunk-simulated-tactile-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
