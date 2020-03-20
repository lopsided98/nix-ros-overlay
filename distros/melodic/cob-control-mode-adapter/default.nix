
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-manager-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-control-mode-adapter";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control_mode_adapter/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "552fe26de125e1241aa19ce2a49f3d5b531545e22caa098f129a8acc5aab2931";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost controller-manager-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package provides a node that automatically loads respective ros_controllers depending on required control mode.'';
    license = with lib.licenses; [ asl20 ];
  };
}
