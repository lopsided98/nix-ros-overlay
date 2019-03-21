
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, control-msgs, realtime-tools, catkin, tinyxml, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-control-toolbox";
  version = "1.17.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/control_toolbox-release/archive/release/kinetic/control_toolbox/1.17.0-0.tar.gz;
    sha256 = "be4c04c34bb6156133ce2e5f525159fc3a2ae35dff91132d54fdf70b0f625e7f";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-runtime control-msgs dynamic-reconfigure std-msgs realtime-tools roscpp tinyxml ];
  nativeBuildInputs = [ cmake-modules control-msgs realtime-tools catkin tinyxml message-generation dynamic-reconfigure std-msgs roscpp ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    #license = lib.licenses.BSD;
  };
}
