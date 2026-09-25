
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-std-tools, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-mission-items";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_mission_items/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "cd6d09fa5a99046bbace4e22ee5139381c1a855e842a722581dd027dda0d4e87";
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
