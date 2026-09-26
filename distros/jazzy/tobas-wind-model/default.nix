
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wind-model";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wind_model/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "edab9e954221db96a4370b0733c7d5da82b392372789166a29cc4643c426ec37";
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
