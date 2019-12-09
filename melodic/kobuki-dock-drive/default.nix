
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-geometry, catkin, ecl-threads, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-melodic-kobuki-dock-drive";
  version = "0.7.8";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_dock_drive/0.7.8-0.tar.gz";
    name = "0.7.8-0.tar.gz";
    sha256 = "4dfca7766cb632cb77dd853c714c4da273b373cb549f891a71533fd0ea36d437";
  };

  buildType = "catkin";
  buildInputs = [ ecl-geometry ecl-threads ecl-build ecl-linear-algebra ];
  propagatedBuildInputs = [ ecl-geometry ecl-threads ecl-linear-algebra ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dock driving library for Kobuki. Users owning a docking station for Kobuki 
	    can use this tool to develop autonomous docking drive algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
