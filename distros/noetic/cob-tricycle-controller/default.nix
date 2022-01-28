
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-tricycle-controller";
  version = "0.8.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_tricycle_controller/0.8.18-1.tar.gz";
    name = "0.8.18-1.tar.gz";
    sha256 = "d3c6c791150dff4d2e4c2e4be618501719e4bc09af869ba5dbe226adac7a5555";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot tricycle base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
