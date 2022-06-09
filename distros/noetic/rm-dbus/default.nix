
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-dbus";
  version = "0.1.10-r2";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_dbus/0.1.10-2.tar.gz";
    name = "0.1.10-2.tar.gz";
    sha256 = "403fb7f9e910b555337cfbeae1e4217202db0e7aa17e4d5c2e9890841979381c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package that uses dbus to read remote control information'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
