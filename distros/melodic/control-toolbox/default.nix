
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-msgs, dynamic-reconfigure, message-generation, message-runtime, realtime-tools, roscpp, rosunit, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-control-toolbox";
  version = "1.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/melodic/control_toolbox/1.18.0-1.tar.gz";
    name = "1.18.0-1.tar.gz";
    sha256 = "ad00adfd593adb29204950fe83ae50e9fedd279851b6fa37b2a281c6fbb7b345";
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
