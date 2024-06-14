
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-test";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_test/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "078dbd60588cc2fd22aa8ee8feb368607fced649f9c08defeafb3841846cafe1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = "The ability to add tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
