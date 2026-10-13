
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-lifecycle, rcutils, tf2-msgs, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-jazzy-easynav-common";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_common/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "8ed4f86e318c0106f4b96b00b872ff7fb4879dafe72fec3a198a09b6a8896373";
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
