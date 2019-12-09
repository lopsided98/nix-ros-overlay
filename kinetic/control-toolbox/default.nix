
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, dynamic-reconfigure, std-msgs, cmake-modules, catkin, tinyxml, rosunit, realtime-tools, roscpp, message-runtime, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-control-toolbox";
  version = "1.17.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/kinetic/control_toolbox/1.17.0-0.tar.gz";
    name = "1.17.0-0.tar.gz";
    sha256 = "be4c04c34bb6156133ce2e5f525159fc3a2ae35dff91132d54fdf70b0f625e7f";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs cmake-modules tinyxml realtime-tools roscpp message-generation control-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs tinyxml realtime-tools roscpp message-runtime control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
