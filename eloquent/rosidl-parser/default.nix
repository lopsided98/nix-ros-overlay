
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-parser";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_parser/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "346d1a443bd977f5783cea2de8671cb889668b180ce3f1b05fe2c80d7a70e5d1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark-parser rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
