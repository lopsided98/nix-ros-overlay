
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, cv-bridge, geometry-msgs, gtest, mrpt-libposes, mrpt-libros-bridge, nav-msgs, rclcpp, ros-environment, sensor-msgs, std-msgs, stereo-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-pose-cov-ops";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pose_cov_ops-release/archive/release/kilted/pose_cov_ops/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "a2a0e950009d5d653ad02c2b5826cb74641323c82b1fe0dcae30a560ff71284f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs mrpt-libposes mrpt-libros-bridge nav-msgs rclcpp sensor-msgs std-msgs stereo-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = "C++ library for SE(2)/SE(3) pose composition operations with uncertainty";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
