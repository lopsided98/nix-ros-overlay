
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-lifecycle, rcutils, tf2-msgs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-kilted-easynav-common";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_common/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c3dbabc36ea198b95bc816658087c9e0a9a1592383ef42f7bb8d7fc4e9ade4be";
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
