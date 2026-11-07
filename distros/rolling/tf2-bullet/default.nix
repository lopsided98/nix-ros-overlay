
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, bullet, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-bullet";
  version = "0.46.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_bullet/0.46.5-1.tar.gz";
    name = "0.46.5-1.tar.gz";
    sha256 = "1343212f0940eccb5aa2fcab810c03b383019245cded78ee4dc0589ee7b0d8fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros-core ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ bullet geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tf2_bullet";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
