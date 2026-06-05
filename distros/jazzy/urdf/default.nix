
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, tinyxml2-vendor, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-urdf";
  version = "2.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/jazzy/urdf/2.10.1-2.tar.gz";
    name = "2.10.1-2.tar.gz";
    sha256 = "3f8761fecfd4be6cd153580cd1d6631dee2e4df2066e8034feb22eba9bc8c1da";
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
