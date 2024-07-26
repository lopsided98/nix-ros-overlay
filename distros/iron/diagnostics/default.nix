
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-iron-diagnostics";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/diagnostics/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "0f1c62460fee5e791d0936bdb8b509a2d1d9d56f39f19a6000a0f59000bb9a92";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "diagnostics";
    license = with lib.licenses; [ bsd3 ];
  };
}
