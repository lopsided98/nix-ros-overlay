
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-dbus";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_dbus/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "3970f914fefb1865e1ba6805dc546e104106366fb818c438820c6ac75cb2f96d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that uses dbus to read remote control information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
