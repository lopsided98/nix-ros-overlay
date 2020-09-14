
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-geometry, ecl-linear-algebra, ecl-threads }:
buildRosPackage {
  pname = "ros-foxy-kobuki-dock-drive";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_core-release/archive/release/foxy/kobuki_dock_drive/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "4f3a32217b2b9bad179c8b3908e4bc600091b95f4935dfb01a58dc3d56e82fc8";
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
