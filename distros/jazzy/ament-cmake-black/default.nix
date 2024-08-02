
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-black, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-black";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_black-release/archive/release/jazzy/ament_cmake_black/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "94eba3896db0aeafa4462a867c05b10ac502051170f2271311621394b9784e73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ament-black ament-cmake-test ];
  nativeBuildInputs = [ ament-black ament-cmake-core ament-cmake-test ];

  meta = {
    description = "The CMake API for ament_black to lint Python code using black.";
    license = with lib.licenses; [ asl20 ];
  };
}
