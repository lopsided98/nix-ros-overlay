
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, sdformat-test-files, sdformat-vendor, tinyxml2-vendor, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kilted-sdformat-urdf";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/kilted/sdformat_urdf/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "ce35ce8fa65965a41cbfeab0aebe64cfdf8e2865c9cc9b247f9bf4f4f7d2c45c";
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
