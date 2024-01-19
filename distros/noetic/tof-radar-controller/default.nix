
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, realtime-tools, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-tof-radar-controller";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/tof_radar_controller/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "ad1fa1afa0569aac989392fb1a3bc69377920e82e944130798cad2b50d281cf9";
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
