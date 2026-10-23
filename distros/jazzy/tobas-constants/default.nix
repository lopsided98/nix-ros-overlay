
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-constants";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_constants/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "58ad91b2b4136127db7dd6e71fabca9c2041938cc31a24fbb70ea764af613a73";
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
