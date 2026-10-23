
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-std-tools, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-items";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_items/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "0a706ee2c3d7ac8ecfdb73eec46ef8f43f7b4146878993e44a5fe0704ce0655e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-std-tools tobas-yaml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ mission, mission-item, priority, and altitude-frame data models.";
    license = with lib.licenses; [ asl20 ];
  };
}
