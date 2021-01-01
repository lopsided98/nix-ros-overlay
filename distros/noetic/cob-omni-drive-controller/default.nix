
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, sensor-msgs, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-omni-drive-controller";
  version = "0.8.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_omni_drive_controller/0.8.12-1.tar.gz";
    name = "0.8.12-1.tar.gz";
    sha256 = "a63fd16d613b458123641e7507581f8c77788834661847ad81f80223aa135d92";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp sensor-msgs std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot omni-directional base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
