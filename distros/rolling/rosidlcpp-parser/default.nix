
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nlohmann_json }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-parser";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_parser/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "5deabfe269eeecb2fe53a2e4fd24c0a74c57745a83c79d82b6ff30ffd3c53fae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides utilities to parse idl files into a json data structure";
    license = with lib.licenses; [ asl20 ];
  };
}
