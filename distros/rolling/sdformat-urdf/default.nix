
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, pluginlib, rcutils, sdformat-test-files, sdformat-vendor, tinyxml-2, urdf, urdf-parser-plugin, urdfdom-headers }:
buildRosPackage {
  pname = "ros-rolling-sdformat-urdf";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sdformat_urdf-release/archive/release/rolling/sdformat_urdf/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "07031a60ad4927c3511b5e84c39c7351ce3a4e1059df474691520f0b84bcfd58";
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
