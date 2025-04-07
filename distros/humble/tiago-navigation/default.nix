
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors, tiago-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.9.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.9.0-1.tar.gz";
    name = "4.9.0-1.tar.gz";
    sha256 = "4e5acd611efb937de2032043b180769e63e83b3f9611f5af1af1c29c696da904";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ tiago-2dnav tiago-laser-sensors tiago-rgbd-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo navigation metapackage";
    license = with lib.licenses; [ asl20 ];
  };
}
