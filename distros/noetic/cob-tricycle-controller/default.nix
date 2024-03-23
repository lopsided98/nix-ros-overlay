
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-tricycle-controller";
  version = "0.8.23-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_tricycle_controller/0.8.23-1.tar.gz";
    name = "0.8.23-1.tar.gz";
    sha256 = "d085fb079b01b4c2905e0a8062e9c61ce04385b828eeac8e7effd1a4df8be8e2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot tricycle base platform.";
    license = with lib.licenses; [ asl20 ];
  };
}
