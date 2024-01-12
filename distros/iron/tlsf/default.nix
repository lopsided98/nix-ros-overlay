
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-tlsf";
  version = "0.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tlsf-release/archive/release/iron/tlsf/0.8.2-3.tar.gz";
    name = "0.8.2-3.tar.gz";
    sha256 = "504eac055a6857b47c28e4dc7d8bffb541da851fb88b7721d73e0a28b61bd5cf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TLSF allocator version 2.4.6'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
