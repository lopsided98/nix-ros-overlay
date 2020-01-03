
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-msgs, dynamic-reconfigure, message-generation, message-runtime, realtime-tools, roscpp, rosunit, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-control-toolbox";
  version = "1.17.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/melodic/control_toolbox/1.17.0-0.tar.gz";
    name = "1.17.0-0.tar.gz";
    sha256 = "87d87fd3110630b61fba232464add3e10dca4f7e6a080cf4900827cccf711c56";
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
