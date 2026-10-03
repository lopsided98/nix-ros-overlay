
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-cpp-code-style-example }:
buildRosPackage {
  pname = "ros-jazzy-tobas-code-style";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_code_style/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "d5179f9fd2b3e980ec16fab8bc49bfc76073b27b5208cca975a32c73240f0dad";
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
