
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, pythonPackages, ament-lint-common, ament-cmake, ament-cmake-pytest, ament-lint-auto, rosidl-adapter }:
buildRosPackage {
  pname = "ros-crystal-rosidl-parser";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_parser/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "28496bca14e887afa1c7c178146ab443934723db1088e8b54dfde79d43cc3d9e";
  };

  buildType = "ament_cmake";
  checkInputs = [ pythonPackages.pytest ament-lint-common ament-lint-auto ament-cmake-pytest ];
  propagatedBuildInputs = [ python3Packages.lark-parser rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The parser for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
