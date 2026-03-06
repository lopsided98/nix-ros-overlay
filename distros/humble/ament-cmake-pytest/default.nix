
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pytest";
  version = "1.3.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_pytest/1.3.14-1.tar.gz";
    name = "1.3.14-1.tar.gz";
    sha256 = "d70bdb37b49de65781840d42ba8f466ad9ecbf8c99abd916ce5263ee1d559a22";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test python3Packages.pytest ];

  meta = {
    description = "The ability to run Python tests using pytest in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
