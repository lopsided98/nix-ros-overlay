
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wind-model";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wind_model/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "d698241940ca422eb6af6f88aaac1804741a2c027f6d4171521079a50fab0c35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Dryden turbulence and wind-disturbance model library.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
