
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-conversions, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-parser";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_parser/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ac5eaaea3a87314305d9e9712d0c8ce5abaa39d1b696c52984254e9f6234d48f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-kdl-conversions tobas-urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Parser that builds KDL robot models from URDF descriptions.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
