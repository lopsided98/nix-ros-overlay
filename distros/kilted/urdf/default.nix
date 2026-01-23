
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-google-benchmark, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, tinyxml2-vendor, urdf-parser-plugin, urdfdom, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-urdf";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf-release/archive/release/kilted/urdf/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "5b7f997488041bc136b09f1f085b9a956cff8b447a778debd5e6b22c8c6158fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-google-benchmark ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib rcutils tinyxml2-vendor urdf-parser-plugin urdfdom urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package contains a C++ parser for the Unified Robot Description
    Format (URDF), which is an XML format for representing a robot model.
    The code API of the parser has been through our review process and will remain
    backwards compatible in future releases.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
