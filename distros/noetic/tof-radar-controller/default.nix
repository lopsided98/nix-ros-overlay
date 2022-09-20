
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-tof-radar-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/tof_radar_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "c9db3b3a51ce4383ee6b10e320fde6ed04f80403548803e789178705d63df505";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib realtime-tools rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tof radar controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
