
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-parser";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_parser/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "0d2df6657c4b704457136e698664681608c60aa4228f5d20b5e5259ca74ee44a";
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
