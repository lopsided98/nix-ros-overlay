
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-geometry, ecl-build, ecl-threads, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-melodic-kobuki-dock-drive";
  version = "0.7.8";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_dock_drive/0.7.8-0.tar.gz;
    sha256 = "4dfca7766cb632cb77dd853c714c4da273b373cb549f891a71533fd0ea36d437";
  };

  buildInputs = [ ecl-build ecl-linear-algebra ecl-geometry ecl-threads ];
  propagatedBuildInputs = [ ecl-linear-algebra ecl-geometry ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dock driving library for Kobuki. Users owning a docking station for Kobuki 
	    can use this tool to develop autonomous docking drive algorithms.'';
    #license = lib.licenses.BSD;
  };
}
