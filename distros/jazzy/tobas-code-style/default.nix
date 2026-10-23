
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-cpp-code-style-example }:
buildRosPackage {
  pname = "ros-jazzy-tobas-code-style";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_code_style/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "64a4cc271ccbc695f2cd3440371f23345843313c2903de68c223b384fa73783d";
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
