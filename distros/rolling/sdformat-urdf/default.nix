
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, sdformat-test-files, sdformat-vendor, tinyxml-2, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-sdformat-urdf";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_urdf/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "bd5a43f8c7c73042d4a5b2fbad7a575dfdf865a71fafb3b02bd8d1688931d3ce";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common sdformat-test-files ];
  propagatedBuildInputs = [ ament-cmake-ros pluginlib rcutils sdformat-vendor tinyxml-2 urdf urdf-parser-plugin urdfdom-headers ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "URDF plugin to parse SDFormat XML into URDF C++ DOM objects.";
    license = with lib.licenses; [ asl20 ];
  };
}
