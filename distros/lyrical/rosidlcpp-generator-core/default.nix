
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fmt, nlohmann_json, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidlcpp-generator-core";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/lyrical/rosidlcpp_generator_core/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "769948d254b88512642e78578a654c4cba7ff6b7941b027cd7759844abe48616";
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
