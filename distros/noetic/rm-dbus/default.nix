
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-dbus";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_dbus/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "513ff4146b0c5f95cace971c65735d9f38bf7816387044bd3488b4cacf7b4893";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that uses dbus to read remote control information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
