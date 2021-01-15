
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-manager-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "eb81a58501d4ff88f9941a073698996ba743908e503f15e13c64b47e5dfb0629";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost controller-manager-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package provides a node that automatically loads respective ros_controllers depending on required control mode.'';
    license = with lib.licenses; [ asl20 ];
  };
}
