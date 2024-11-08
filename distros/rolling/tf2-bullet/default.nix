
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bullet, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-bullet";
  version = "0.39.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_bullet/0.39.1-1.tar.gz";
    name = "0.39.1-1.tar.gz";
    sha256 = "1bcbb6d3ee0178f1135c6cacad6c62f5fa44447d99bd63c1b03ccb6abef8b8ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bullet geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tf2_bullet";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
