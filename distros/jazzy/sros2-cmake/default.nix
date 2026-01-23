
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-jazzy-sros2-cmake";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/jazzy/sros2_cmake/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "cefe688f320b571a40a47ec69ad374eab1941e50db539ce84542914d11f0cf37";
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
