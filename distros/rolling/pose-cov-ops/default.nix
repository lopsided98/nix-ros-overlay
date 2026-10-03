
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, cv-bridge, geometry-msgs, gtest, mrpt-libros-bridge, mrpt-poses, nav-msgs, rclcpp, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2 }:
buildRosPackage {
  pname = "ros-rolling-pose-cov-ops";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pose_cov_ops-release/archive/release/rolling/pose_cov_ops/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "beb4cb4f176b72b2fa5473e793a259a5f258600ddb3e06762e35e32197b2e2d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libros-bridge mrpt-poses nav-msgs rclcpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "C++ library for SE(2)/SE(3) pose composition operations with uncertainty";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
