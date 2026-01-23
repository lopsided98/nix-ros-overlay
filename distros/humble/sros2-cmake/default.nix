
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-humble-sros2-cmake";
  version = "0.10.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/humble/sros2_cmake/0.10.8-1.tar.gz";
    name = "0.10.8-1.tar.gz";
    sha256 = "14a4314c2cc21dd021003f1fab85272908572ad61a9cbd0a7dc272cc60253562";
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
