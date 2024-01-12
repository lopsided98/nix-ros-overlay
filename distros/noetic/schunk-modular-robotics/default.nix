
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-description, schunk-libm5api, schunk-powercube-chain, schunk-sdh, schunk-simulated-tactile-sensors }:
buildRosPackage {
  pname = "ros-noetic-schunk-modular-robotics";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/noetic/schunk_modular_robotics/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "9ddd2547360ffa6cc22bb481892941d8d8d0acfb8374ca95582bff6a5ba56665";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-description schunk-libm5api schunk-powercube-chain schunk-sdh schunk-simulated-tactile-sensors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack includes packages that provide access to the Schunk hardware through ROS messages, services and actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
