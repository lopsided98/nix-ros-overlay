
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-eigen";
  version = "0.38.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_eigen/0.38.2-1.tar.gz";
    name = "0.38.2-1.tar.gz";
    sha256 = "1c1a79990e4e4eb71960584a09d557eda972ebdb133f113c8179f945f9b367ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tf2_eigen";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
