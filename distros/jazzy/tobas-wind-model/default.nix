
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-wind-model";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_wind_model/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "57973ebb3c049f1db654e703a06c6ee5f06e6483055eab74163f76be9d2ce491";
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
