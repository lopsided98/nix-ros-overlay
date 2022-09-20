
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch-ros, lifecycle-msgs, pkg-config, python3Packages, pythonPackages, rclcpp, rclcpp-lifecycle, std-msgs, std-srvs, tracetools, tracetools-launch, tracetools-read }:
buildRosPackage {
  pname = "ros-galactic-tracetools-test";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/galactic/tracetools_test/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "f9b457f4e80aab5bb0e067b21df71a33d0715c3a54d9e42a861da7768245e010";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common launch-ros python3Packages.pytestcov pythonPackages.pytest tracetools tracetools-launch tracetools-read ];
  propagatedBuildInputs = [ lifecycle-msgs rclcpp rclcpp-lifecycle std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
