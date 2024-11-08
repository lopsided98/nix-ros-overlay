
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-aggregator, diagnostic-common-diagnostics, diagnostic-updater, self-test }:
buildRosPackage {
  pname = "ros-iron-diagnostics";
  version = "4.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/diagnostics-release/archive/release/iron/diagnostics/4.1.0-2.tar.gz";
    name = "4.1.0-2.tar.gz";
    sha256 = "fdefc2bbb581e7e5ee44a44f5d4277c75b3e4d59b99b7c9d7a5ec8b81bd51f91";
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
