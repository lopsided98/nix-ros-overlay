
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-cpp-code-style-example }:
buildRosPackage {
  pname = "ros-jazzy-tobas-code-style";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_code_style/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c1159c460299e6ae454391e68bf4bc7b5701a05de5405acd8a34e5fa2dfe37a5";
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
