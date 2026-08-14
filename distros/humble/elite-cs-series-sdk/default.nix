
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, libssh }:
buildRosPackage {
  pname = "ros-humble-elite-cs-series-sdk";
  version = "1.4.7-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_SDK-release/archive/release/humble/elite_cs_series_sdk/1.4.7-1.tar.gz";
    name = "1.4.7-1.tar.gz";
    sha256 = "8751333082778e1fe870b4b50b32eccbb2f8cf8960128950bc879d7ac98a687c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost libssh ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Elite Robots CS Series SDK (C++ library for Elibot CS series robotic arms).";
    license = with lib.licenses; [ mit ];
  };
}
