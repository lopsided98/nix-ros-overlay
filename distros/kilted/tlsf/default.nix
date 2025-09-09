
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-tlsf";
  version = "0.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/kilted/tlsf/0.10.1-2.tar.gz";
    name = "0.10.1-2.tar.gz";
    sha256 = "42f0e1601119d5c8347c84962fe6800c5551507c99be2914614eea1048dfe07e";
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
