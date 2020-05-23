
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-msgs, dynamic-reconfigure, message-generation, message-runtime, realtime-tools, roscpp, rosunit, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-control-toolbox";
  version = "1.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/noetic/control_toolbox/1.18.0-1.tar.gz";
    name = "1.18.0-1.tar.gz";
    sha256 = "22af8464ea59e77e430a8dc5539e977ffad9544d77932dc5a1df2a89725df7de";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure message-runtime realtime-tools roscpp std-msgs tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
