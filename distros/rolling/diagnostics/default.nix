
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-rolling-diagnostics";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/rolling/diagnostics/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "16002ae1836463c67d4424b6b4aef8eb668f5f69ed467d731307914296177ff0";
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
