
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-black";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/botsandus/ament_black-release/archive/release/iron/ament_cmake_black/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "48f17e303dda862bef4aacd6ee31e94dae28182c086932f5f3b7425c722df86c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-black ament-cmake-test ];
  nativeBuildInputs = [ ament-black ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_black to lint Python code using black.'';
    license = with lib.licenses; [ asl20 ];
  };
}
