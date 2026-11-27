
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-kdl-conversions, tobas-urdf }:
buildRosPackage {
  pname = "ros-jazzy-tobas-kdl-parser";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_kdl_parser/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "c24bd13fc204d4ef2eca733fd88c03a48d3f1c84ee52d868817371b2c7e33c48";
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
