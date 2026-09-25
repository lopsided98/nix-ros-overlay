
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-inja-vendor, tobas-rapidcsv-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-external";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_external/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "630d0ad7240ba1d386f21af5ecf5bfcb7a74bf10a040c58875b0176f9d0e8b02";
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
