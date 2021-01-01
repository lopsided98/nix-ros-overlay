
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-geometry, ecl-linear-algebra, ecl-threads }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-dock-drive";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/kinetic/kobuki_dock_drive/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "5524c69df8d217355a728590d6f2e893fee955ec6996b4932d4a21462e5c19c3";
  };

  buildType = "catkin";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-geometry ecl-linear-algebra ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dock driving library for Kobuki. Users owning a docking station for Kobuki 
	    can use this tool to develop autonomous docking drive algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
