
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-constants";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_constants/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "8f825c4a090792de7ea27ee61568cf580da82e7705f63cc806b96c048e68b7e3";
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
