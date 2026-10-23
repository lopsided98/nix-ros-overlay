
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wind-model";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wind_model/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "708b00c9a5bc973eaa9cc4e73e962c8359cd2eb49b8f2095c31f96ee9de03644";
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
