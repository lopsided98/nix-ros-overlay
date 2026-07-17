
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-tlsf";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/kilted/tlsf/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "ccc4cf2ea0ac57035f650803b72756804fc97b7522f04db2031bf2e5f5cc5854";
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
