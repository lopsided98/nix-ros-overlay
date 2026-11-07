
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-jazzy-elite-cs-series-sdk";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_SDK-release/archive/release/jazzy/elite_cs_series_sdk/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "ab3d225bd089fe50fd74d8fc8e7deb8a762d445c81b913c1fdfba538f3bb4e95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Elite Robots CS Series SDK (C++ library for Elibot CS series robotic arms).";
    license = with lib.licenses; [ mit ];
  };
}
