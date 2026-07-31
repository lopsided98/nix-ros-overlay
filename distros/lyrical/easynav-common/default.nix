
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, rclcpp-lifecycle, tf2-ros, yaets }:
buildRosPackage {
  pname = "ros-lyrical-easynav-common";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_common/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "8eda9d0f4e142e33400cc1a1275bb0d5ee1205d7859c014a03282742c370bc04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rclcpp-lifecycle tf2-ros yaets ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Utils and types package.";
    license = with lib.licenses; [ asl20 ];
  };
}
