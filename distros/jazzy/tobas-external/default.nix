
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-inja-vendor, tobas-rapidcsv-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-external";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_external/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "73af08a03f9d1a542f59acdd05022a0565505dc45ae1fcc0aac0c5515523d7b2";
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
