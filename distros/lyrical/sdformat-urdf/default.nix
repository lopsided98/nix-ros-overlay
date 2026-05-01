
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, sdformat-test-files, sdformat-vendor, tinyxml-2, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-lyrical-sdformat-urdf";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/lyrical/sdformat_urdf/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "3a6badfdd1f013d559e5d59cabd8870c6a689a17ce59fffd9127117df64ac70e";
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
