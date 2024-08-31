
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, tinyxml2-vendor, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-humble-urdf";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/humble/urdf/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "652bfd0d89e3c10416c89c2b2fd5ce04a6e256a9b24261e63cde273de1519ca9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib tinyxml2-vendor urdf-parser-plugin urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
