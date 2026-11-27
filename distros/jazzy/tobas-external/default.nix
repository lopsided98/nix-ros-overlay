
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-inja-vendor, tobas-rapidcsv-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-external";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_external/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "ecc55af314ecc92bd1d06052e830c8154e3059f9ee1269671822c14f5b3c32f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-inja-vendor tobas-rapidcsv-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for third-party libraries vendored by Tobas.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
