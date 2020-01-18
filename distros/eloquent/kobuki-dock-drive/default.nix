
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-geometry, ecl-linear-algebra, ecl-threads }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-dock-drive";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_core-release/archive/release/eloquent/kobuki_dock_drive/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7e3d8225fb246bdb5cf0416eb6c3b116cc7dca20c9a375000f0e2f4020e6d554";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  propagatedBuildInputs = [ ecl-geometry ecl-linear-algebra ecl-threads ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Dock driving library for Kobuki. Users owning a docking station for Kobuki
	    can use this tool to develop autonomous docking drive algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
