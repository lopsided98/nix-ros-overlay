
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-urdf, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-uadf";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_uadf/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "7c083503d7cd2b21d2db541414f7ac52be9e6580ef43c429181b7e82a2eef567";
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
