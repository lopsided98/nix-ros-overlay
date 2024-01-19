
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-iron-cudnn-cmake-module";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cudnn_cmake_module-release/archive/release/iron/cudnn_cmake_module/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "fe3d9481505ecb0a6ea85ef7905aabebbe45fb3f18c0aff7d68c38071e97880e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Exports a CMake module to find cuDNN.'';
    license = with lib.licenses; [ asl20 ];
  };
}
