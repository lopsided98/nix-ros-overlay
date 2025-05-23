
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, tiago-2dnav, tiago-laser-sensors, tiago-rgbd-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-navigation";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_navigation/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "bba8787bb7be9f1ec25890afb84a6cdfcd7f2540309957b954c87572e1f25cc2";
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
