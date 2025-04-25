
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-test";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_test/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "f552172a6cc8afd1544b989384cb4907d0ded1c6db1effc7c79347e944bdbea7";
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
