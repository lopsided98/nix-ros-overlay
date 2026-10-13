
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-urdf, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-uadf";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_uadf/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "6e0c427fab54061ff44a64b319da89907df58cd61f7d3919a1236ecf0f3175fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-urdf tobas-xml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parser, data model, and exporter for Tobas UADF airframe descriptions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
