
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-msgs, dynamic-reconfigure, message-generation, message-runtime, realtime-tools, roscpp, rosunit, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-control-toolbox";
  version = "1.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/noetic/control_toolbox/1.18.1-1.tar.gz";
    name = "1.18.1-1.tar.gz";
    sha256 = "12636c8385116b81e608f70e811112c849f192c1dde1653d7d98e4b56892c748";
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
