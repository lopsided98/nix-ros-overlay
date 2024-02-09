
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-tidy, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-clang-tidy";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_cmake_clang_tidy/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "60702d1d61cab72d5d653e503b297f6ecde509cef49162a123ade325f4a759aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-clang-tidy ament-cmake-test ];
  nativeBuildInputs = [ ament-clang-tidy ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_clang_tidy to lint C / C++ code using clang tidy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
