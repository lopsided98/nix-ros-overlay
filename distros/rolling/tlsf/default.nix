
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-tlsf";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/rolling/tlsf/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "85a2a5187d3934dd84778d0470e062b91022782681094aab208a28daac2bf01c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TLSF allocator version 2.4.6";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
