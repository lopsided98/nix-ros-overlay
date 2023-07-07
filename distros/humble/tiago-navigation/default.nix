
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "805a01d7681c39579b1df2b82fd7381755b49e2abd8891d54680131b46d98281";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''TIAGo navigation metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
