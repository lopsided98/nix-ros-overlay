
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-pep8, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pep8";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pep8/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "2638ac9c2a80c6e04c290cbd7aea28f1a2a0435c59c06d590959cbce4ddd7929";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-pep8 ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_pep8 to check code against the style conventions in
    PEP 8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
