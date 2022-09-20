
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, python3 }:
buildRosPackage {
  pname = "ros-galactic-python-cmake-module";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/python_cmake_module-release/archive/release/galactic/python_cmake_module/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "1b214c917fbdcc190384457144d3ff27090ebc4d7579936902b610bc67dbf770";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3 ];
  nativeBuildInputs = [ ament-cmake python3 ];

  meta = {
    description = ''Provide CMake module with extra functionality for Python.'';
    license = with lib.licenses; [ asl20 ];
  };
}
