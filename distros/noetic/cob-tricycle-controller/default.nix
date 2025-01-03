
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cob-base-controller-utils, controller-interface, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-tricycle-controller";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_tricycle_controller/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "24f172c22946825e744f6d9e06019a82bca3634ff2a4934d0dbd551410748e42";
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
