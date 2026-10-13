
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-core, geometry-msgs, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-easynav-controller";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/lyrical/easynav_controller/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7e7d4036daddca825ee4ed6cff153e3f2ef107319693ce9d9a4c80d4bd7ddae5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs easynav-common easynav-core geometry-msgs lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
