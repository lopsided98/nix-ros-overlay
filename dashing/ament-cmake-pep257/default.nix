
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-pep257, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pep257";
  version = "0.7.9-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pep257/0.7.9-1.tar.gz;
    sha256 = "32fbfce5c2428189013adfc1f2308d6d4e795a8f915dffd6caa9459f25541ce5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pep257 to check code against the style conventions in
    PEP 257.'';
    license = with lib.licenses; [ asl20 ];
  };
}
