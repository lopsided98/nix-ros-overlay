
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-cpp-code-style-example }:
buildRosPackage {
  pname = "ros-jazzy-tobas-code-style";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_code_style/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "008de514bb72294d7bab65311928a9d0779a4d7fdc0b411ce55ed9295d984373";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-cpp-code-style-example ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Reference package demonstrating the Tobas C++ and CMake coding style.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
