
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, bullet, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf2-bullet";
  version = "0.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_bullet/0.42.1-1.tar.gz";
    name = "0.42.1-1.tar.gz";
    sha256 = "6757741dad4ca31ea163fee3a6980ac6a4a57505b1e6a2737019f98543032bc8";
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
