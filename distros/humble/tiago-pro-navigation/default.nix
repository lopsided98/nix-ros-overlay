
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-pro-2dnav, tiago-pro-laser-sensors, tiago-pro-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-navigation";
  version = "2.13.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_navigation-release/archive/release/humble/tiago_pro_navigation/2.13.3-1.tar.gz";
    name = "2.13.3-1.tar.gz";
    sha256 = "d6395bc7f65ca68e64fedb9077773b381ef928b7daffc071f1d5cf9dce6a12d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-pro-2dnav tiago-pro-laser-sensors tiago-pro-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The tiago_pro Navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
