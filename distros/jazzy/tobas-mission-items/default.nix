
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-std-tools, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-items";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_items/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "5c746fb444c6896b7d8b0f4d0e970f7ae3cf0d5fe8410cee942623a7574dff73";
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
