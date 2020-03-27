
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-tricycle-controller";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_tricycle_controller/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "c918255e235cd8a8376fac4965812773a269ed51ea5f25d0187f36b72dccea00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot tricycle base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
