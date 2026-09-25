
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-inja-vendor, tobas-rapidcsv-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-external";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_external/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "085bf10bb3d4654b9a40316e8d99f053f6fb4e76f8b762cce93bd31027ee753a";
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
