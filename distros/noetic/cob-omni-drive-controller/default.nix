
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, sensor-msgs, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-omni-drive-controller";
  version = "0.8.22-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_omni_drive_controller/0.8.22-1.tar.gz";
    name = "0.8.22-1.tar.gz";
    sha256 = "5dbe37e53b8d0bd8a73d01fd0e4cb0bbe7cc469178e76cdb9ee80bab3b996094";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp sensor-msgs std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot omni-directional base platform.'';
    license = with lib.licenses; [ asl20 ];
  };
}
