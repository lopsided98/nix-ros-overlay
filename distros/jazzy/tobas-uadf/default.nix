
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-urdf, tobas-xml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-uadf";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_uadf/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "09df9df0525cec1567cff6f2d4544150b94419db35eba3f49192fc3e11684f0f";
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
