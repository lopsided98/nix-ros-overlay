
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-rolling-rosidl-parser";
  version = "5.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_parser/5.0.1-1.tar.gz";
    name = "5.0.1-1.tar.gz";
    sha256 = "3e5deb811cb2fdf9a41af17dad9b50bee829af2f6da063a6e7ccb9874b71ff4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.lark rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The parser for `.idl` ROS interface files.";
    license = with lib.licenses; [ asl20 ];
  };
}
