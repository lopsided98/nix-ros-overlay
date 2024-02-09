
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-rolling-rosidl-parser";
  version = "4.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_parser/4.5.1-1.tar.gz";
    name = "4.5.1-1.tar.gz";
    sha256 = "b6ed2ab2f1039dd8c52ae7d6ee6cc42eea271015193c07e47dea40eda09c5fc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for `.idl` ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
