
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-lifecycle, rcutils, tf2-msgs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-lyrical-easynav-common";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_common/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "0585cd00c7288216ee122d3bf64930f73fd54a98bfa5ae45572bb456d4d8f06d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common tf2-msgs ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs rclcpp rclcpp-lifecycle rcutils tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Utils and types package.";
    license = with lib.licenses; [ asl20 ];
  };
}
