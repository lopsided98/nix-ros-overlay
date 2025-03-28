
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-cpplint";
  version = "0.12.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_cpplint/0.12.12-1.tar.gz";
    name = "0.12.12-1.tar.gz";
    sha256 = "6367433eae9ef1d95ab6a40043ab43fcca615f476b118b59aba2c02a70abe9e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-cpplint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cpplint ];

  meta = {
    description = "The CMake API for ament_cpplint to lint C / C++ code using cpplint.";
    license = with lib.licenses; [ asl20 ];
  };
}
