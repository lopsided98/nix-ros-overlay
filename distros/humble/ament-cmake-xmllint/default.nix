
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-xmllint";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_xmllint/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "46cd8f4795e68c5ed506716ef4b283cb44a0befa26d849e3eb0ef2c3a456952e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-xmllint ];

  meta = {
    description = "The CMake API for ament_xmllint to check XML file using xmmlint.";
    license = with lib.licenses; [ asl20 ];
  };
}
