
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bullet, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-tf2-bullet";
  version = "0.31.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/tf2_bullet/0.31.7-1.tar.gz";
    name = "0.31.7-1.tar.gz";
    sha256 = "05490f96530d5b2c1e41f957bc95ec733b9295f9e41cf1f28b6d162dca050ba9";
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
