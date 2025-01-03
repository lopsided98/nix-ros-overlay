
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, sdformat-test-files, sdformat-vendor, tinyxml2-vendor, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-jazzy-sdformat-urdf";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/jazzy/sdformat_urdf/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "744a2aa608865590ded3d35e3c0e2fd296aff9f65557834e6a4ba956023a376c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common sdformat-test-files ];
  propagatedBuildInputs = [ ament-cmake-ros pluginlib rcutils sdformat-vendor tinyxml2-vendor urdf urdf-parser-plugin urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "URDF plugin to parse SDFormat XML into URDF C++ DOM objects.";
    license = with lib.licenses; [ asl20 ];
  };
}
