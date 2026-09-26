
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-tobas-constants";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_constants/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "e4267563c4c2dc172fe7b14a741a3c520482a67a247f5263fe9c96a095042d59";
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
