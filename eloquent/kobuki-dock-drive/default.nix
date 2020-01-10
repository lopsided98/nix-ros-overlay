
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-geometry, ecl-linear-algebra, ecl-threads }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-dock-drive";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_core-release/archive/release/eloquent/kobuki_dock_drive/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "c145fea1cfb08789908978bca29de6bcd91f89bd0e91d388bc2b1fd94b59470f";
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
