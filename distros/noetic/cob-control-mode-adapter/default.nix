
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-manager-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-control-mode-adapter";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_control_mode_adapter/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "33e5f2cb81018aaeee0f371914041c51a548796a9fcc596440808814b7aae8a3";
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
