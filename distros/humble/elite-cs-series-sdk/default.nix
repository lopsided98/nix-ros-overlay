
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-humble-elite-cs-series-sdk";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_SDK-release/archive/release/humble/elite_cs_series_sdk/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "2f6dc8a80c73b0931b3bce6e5b4855cfd62fcf689b4f4525b474fc7171756f34";
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
