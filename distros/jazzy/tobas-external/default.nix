
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-inja-vendor, tobas-rapidcsv-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-external";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_external/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "9c211a7c5f6cf58bd61b445c0c02587e45795dc107f6014c21b54266bb03b958";
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
