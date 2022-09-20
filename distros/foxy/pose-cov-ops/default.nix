
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-xmllint, ament-lint-auto, ament-lint-common, cmake, geometry-msgs, gtest, mrpt2, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-foxy-pose-cov-ops";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pose_cov_ops-release/archive/release/foxy/pose_cov_ops/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "0fbc07f70b9b3afa4e5f3f585a985c45fbfb769b2b242456fd8905abb26534e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest ament-cmake-xmllint cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common gtest ];
  propagatedBuildInputs = [ geometry-msgs mrpt2 tf2 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gmock ament-cmake-gtest cmake ];

  meta = {
    description = ''C++ library for SE(2)/SE(3) pose composition operations with uncertainty'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
