
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-humble-diagnostics";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/humble/diagnostics/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "c1017c30fc6e80ad53a9cb52aae0d31b47bdfd0a16e9eb892110739a89b222c9";
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
