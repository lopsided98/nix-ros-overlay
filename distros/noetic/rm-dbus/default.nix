
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-dbus";
  version = "0.1.9-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_dbus/0.1.9-3.tar.gz";
    name = "0.1.9-3.tar.gz";
    sha256 = "4301db8fa908c0555a0873c635afa3a75c6be3c5892a49b7194ab83d98bd948a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that uses dbus to read remote control information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
