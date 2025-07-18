
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nlohmann_json }:
buildRosPackage {
  pname = "ros-kilted-rosidlcpp-parser";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/kilted/rosidlcpp_parser/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "f241afab4a2b4f4d8c4fabcc62ee3f82aa1e9ab1845d84eff174b970911cc6e8";
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
