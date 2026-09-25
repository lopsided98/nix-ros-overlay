
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-constants";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_constants/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f67e292777ea052ec1efc07e180edc5b8e67d22e06f5b065aa5875f29867e00a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared constants and enumerations for Tobas flight modes, frames, hardware, topics, and commands.";
    license = with lib.licenses; [ asl20 ];
  };
}
