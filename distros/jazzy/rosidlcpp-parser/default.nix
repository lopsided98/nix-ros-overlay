
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-rosidlcpp-parser";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/jazzy/rosidlcpp_parser/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5fd84f8b0425909cadd1c6172b308d2749cf359950bcd0fb45b97a410fa79d6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake fmt nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides utilities to parse idl files into a json data structure";
    license = with lib.licenses; [ asl20 ];
  };
}
