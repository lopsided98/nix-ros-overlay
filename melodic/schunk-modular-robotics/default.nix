
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, schunk-powercube-chain, schunk-libm5api, schunk-description, schunk-sdh, catkin, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-melodic-schunk-modular-robotics";
  version = "0.6.13-r2";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_modular_robotics/0.6.13-2.tar.gz;
    sha256 = "959d9afc2494f0a20d484eb9719a7d019ffe8d3c1ebe9217d619b2e0b162c55f";
  };

  propagatedBuildInputs = [ schunk-powercube-chain schunk-libm5api schunk-sdh schunk-description schunk-simulated-tactile-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
