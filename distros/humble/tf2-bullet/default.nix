
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bullet, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-tf2-bullet";
  version = "0.25.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_bullet/0.25.9-1.tar.gz";
    name = "0.25.9-1.tar.gz";
    sha256 = "0cbab3f45ec6bdc77451d1fc260835f3e3911b4fd3b975485c16c0aba576e175";
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
