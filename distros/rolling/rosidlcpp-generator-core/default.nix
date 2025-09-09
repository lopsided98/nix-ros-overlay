
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-core";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_core/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2bf2aae9cba266e16bf7a2441ab6dabeffc328d2a01d30665797639f5a7aeca9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fmt rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides the basis for all rosidlcpp generators";
    license = with lib.licenses; [ asl20 ];
  };
}
