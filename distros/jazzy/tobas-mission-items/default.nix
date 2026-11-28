
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-std-tools, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-items";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_items/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "296c9f114c94c7bd47df7c0ac36d886411e093289c17ced5b75339649e75adcd";
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
