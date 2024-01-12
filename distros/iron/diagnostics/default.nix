
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-iron-diagnostics";
  version = "3.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/diagnostics/3.1.2-3.tar.gz";
    name = "3.1.2-3.tar.gz";
    sha256 = "868cfc721e37dd190055d66adb13f1ccf4efded059c6179075b39792135d56bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-common-diagnostics diagnostic-updater self-test ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''diagnostics'';
    license = with lib.licenses; [ bsd3 ];
  };
}
