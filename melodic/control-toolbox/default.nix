
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, control-msgs, realtime-tools, catkin, tinyxml, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-control-toolbox";
  version = "1.17.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_toolbox-release/archive/release/melodic/control_toolbox/1.17.0-0.tar.gz;
    sha256 = "87d87fd3110630b61fba232464add3e10dca4f7e6a080cf4900827cccf711c56";
  };

  buildInputs = [ message-generation cmake-modules control-msgs dynamic-reconfigure std-msgs realtime-tools roscpp tinyxml ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-runtime control-msgs dynamic-reconfigure std-msgs realtime-tools roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    #license = lib.licenses.BSD;
  };
}
