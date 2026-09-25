
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-urdf, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-uadf";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_uadf/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "7e7d25dfa2ca5dadd5d93931f0c97093c19f0f1b4153342870ca5b2282c8a73a";
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
