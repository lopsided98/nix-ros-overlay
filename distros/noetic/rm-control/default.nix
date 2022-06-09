
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rm-common, rm-dbus, rm-description, rm-hw, rm-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-control";
  version = "0.1.10-r2";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_control/0.1.10-2.tar.gz";
    name = "0.1.10-2.tar.gz";
    sha256 = "d87e8ee13e677baab8320bf6e3f340ee2b22abc085b0def23a126e204eec0d09";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rm-common rm-dbus rm-description rm-hw rm-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package that contains package of rm_control.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
