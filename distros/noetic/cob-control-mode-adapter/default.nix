
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-manager-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-control-mode-adapter";
  version = "0.8.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_control_mode_adapter/0.8.18-1.tar.gz";
    name = "0.8.18-1.tar.gz";
    sha256 = "0b178541cf7d1bb1e7e3e95e525bce64aab6b4044f449baf906782ad810a75da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost controller-manager-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package provides a node that automatically loads respective ros_controllers depending on required control mode.'';
    license = with lib.licenses; [ asl20 ];
  };
}
