
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-jazzy-sros2-cmake";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/jazzy/sros2_cmake/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "775835497a57aca0dbff0d3eb5dfcfafb806d1fe3933c45a89996ce795c54c5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros to configure security";
    license = with lib.licenses; [ asl20 ];
  };
}
