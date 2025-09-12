
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json }:
buildRosPackage {
  pname = "ros-kilted-rosidlcpp-parser";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/kilted/rosidlcpp_parser/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d88d54aa6f04d302e1d44de2b58d44e0c70e5ae7a3d06d39a61ebd1c82fd2b40";
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
