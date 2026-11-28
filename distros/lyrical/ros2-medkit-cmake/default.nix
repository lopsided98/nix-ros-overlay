
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-test, domain-coordinator, launch-testing-ament-cmake, python3Packages, rclpy, rmw-fastrtps-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ros2-medkit-cmake";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_medkit-release/archive/release/lyrical/ros2_medkit_cmake/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "f35be4ef2294fd129496023225e67a9e9c02945e91c8bea8b8524ee5f043abd5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-flake8 ament-cmake-gtest ament-cmake-pytest launch-testing-ament-cmake python3Packages.pytest rclpy rmw-fastrtps-cpp std-msgs ];
  propagatedBuildInputs = [ ament-cmake-test domain-coordinator ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared CMake modules for ros2_medkit packages (multi-distro compat, ccache, linting)";
    license = with lib.licenses; [ asl20 ];
  };
}
