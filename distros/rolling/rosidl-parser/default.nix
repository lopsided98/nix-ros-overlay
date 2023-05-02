
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, python3Packages, pythonPackages, rosidl-adapter }:
buildRosPackage {
  pname = "ros-rolling-rosidl-parser";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_parser/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "cfad0f8d1fcc60f921da17019f92470cf379c61cb4bd6eb1fca3a1ecfcead2fb";
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
