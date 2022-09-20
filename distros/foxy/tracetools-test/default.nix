
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-mypy, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch-ros, pkg-config, python3Packages, pythonPackages, rclcpp, std-msgs, std-srvs, tracetools, tracetools-launch, tracetools-read }:
buildRosPackage {
  pname = "ros-foxy-tracetools-test";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_tracing-release/archive/release/foxy/tracetools_test/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "066770fa01463a384c5118c2a6c3ce86bc8a5807da57eea8c6b82fe13a1d58a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-cmake-mypy ament-cmake-pytest ament-lint-auto ament-lint-common launch-ros python3Packages.pytestcov pythonPackages.pytest tracetools tracetools-launch tracetools-read ];
  propagatedBuildInputs = [ rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Testing utilities and tests for the tracetools package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
