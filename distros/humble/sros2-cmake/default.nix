
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-humble-sros2-cmake";
  version = "0.10.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/humble/sros2_cmake/0.10.5-1.tar.gz";
    name = "0.10.5-1.tar.gz";
    sha256 = "b68229c75ca71df8094507a6528ac6a1d367a4bb6615e25b470263c285e261a5";
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
