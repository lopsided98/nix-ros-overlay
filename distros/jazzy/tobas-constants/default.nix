
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-constants";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_constants/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "50973c3b1be2c6996ebbd96049fb3d7f50dce540f1d3c7d48941ee80179403d6";
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
