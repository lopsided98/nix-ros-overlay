
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, control-msgs, dynamic-reconfigure, message-generation, message-runtime, realtime-tools, roscpp, rosunit, std-msgs, tinyxml }:
buildRosPackage {
  pname = "ros-melodic-control-toolbox";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/melodic/control_toolbox/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "f1c7f00c8c9e32db695503d01ab129c915dd47cb1f1468535e2086dd6b9ecaf2";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure message-runtime realtime-tools roscpp std-msgs tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
