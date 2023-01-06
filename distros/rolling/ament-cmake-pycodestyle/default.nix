
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pycodestyle";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pycodestyle/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "4fae75e0906ff5531bf6a408fc85a1e4dbe96fffec737bdd267a554fa9a82842";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pycodestyle ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pycodestyle ];

  meta = {
    description = ''The CMake API for ament_pycodestyle to check code against the style conventions in
    PEP 8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
