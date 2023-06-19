
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-mypy }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-mypy";
  version = "0.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_mypy/0.14.1-2.tar.gz";
    name = "0.14.1-2.tar.gz";
    sha256 = "670f9d4ee5912947565d52a58ce17ac3ab5c84d5b2255c23ba853972629fb09f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-mypy ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-mypy ];

  meta = {
    description = ''The CMake API for ament_mypy to perform static type analysis on python code
    with mypy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
