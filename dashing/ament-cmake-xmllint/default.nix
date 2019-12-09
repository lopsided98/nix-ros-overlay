
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-xmllint";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_xmllint/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "24986c84ce92b0f05bb41bb477a69b9840eafcb5501ca2949056301ab2363c2b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_xmllint to check XML file using xmmlint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
