
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, dynamic-reconfigure, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, sensor-msgs, std-msgs, std-srvs, tf, tf2, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-omni-drive-controller";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_omni_drive_controller/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "b1118746ad9853362b712c807d6a0be465ae841b6f8f3a0b55306ec803bc85ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles boost cob-base-controller-utils controller-interface dynamic-reconfigure geometry-msgs hardware-interface nav-msgs pluginlib realtime-tools roscpp sensor-msgs std-msgs std-srvs tf tf2 urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_omni_drive_controller package provides a ros_controller plugin for the Care-O-bot omni-directional base platform.";
    license = with lib.licenses; [ asl20 ];
  };
}
