
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-manager-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-control-mode-adapter";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_control_mode_adapter/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "ef5fc7fd0b00f4a445f256ab2a8b72931bba26065e395360b86096a003a400fa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost controller-manager-msgs roscpp roslint std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_control_mode_adapter package provides a node that automatically loads respective ros_controllers depending on required control mode.";
    license = with lib.licenses; [ asl20 ];
  };
}
