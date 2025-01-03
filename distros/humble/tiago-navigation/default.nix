
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "7275a40bfdd9a2735e0e1eee8c2dbe7a7007d37c5de8f871d1faef415ad9cc67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
