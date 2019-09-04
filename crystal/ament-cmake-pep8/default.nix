
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-pep8";
  version = "0.6.4";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_pep8/0.6.4-0.tar.gz;
    sha256 = "068579b247325a0186817e0c1f5cac02a8089691fdf50553ca65b230525e6a99";
  };

  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pep8 to check code against the style conventions in
    PEP 8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
