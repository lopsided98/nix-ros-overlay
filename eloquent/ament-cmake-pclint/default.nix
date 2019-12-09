
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-pclint, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-pclint";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/ament_cmake_pclint/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "dc5c805ee611e6993f6ef607f6a2104db027a5d916f8513959ba2174f8c3281c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PCLint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
