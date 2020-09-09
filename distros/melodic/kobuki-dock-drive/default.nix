
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-geometry, ecl-linear-algebra, ecl-threads }:
buildRosPackage {
  pname = "ros-melodic-kobuki-dock-drive";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/kobuki_dock_drive/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "2385bb482dfb73b115422ccd2d03f79a88ea1204dd266e6055581954051a6d8c";
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
