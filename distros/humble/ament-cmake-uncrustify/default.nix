
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-uncrustify";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_uncrustify/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "c9a52079514cd87c50633483caa82f316dbfeb0f5193f6577eda5e751c3e0d26";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = "The CMake API for ament_uncrustify to check code against styleconventions
    using uncrustify.";
    license = with lib.licenses; [ asl20 ];
  };
}
