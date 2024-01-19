
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rm-dbus";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_dbus/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "d3b4f9c7e1882e990f658881d460616d5c4e78668ddbaeaa6cdd2bd1cb9b05cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rm-common roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that uses dbus to read remote control information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
