
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-tricycle-controller";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_tricycle_controller/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "52c61e342f79f4570746b440ee02c64346066a01a9b31457826c2d026ad6674e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot tricycle base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
