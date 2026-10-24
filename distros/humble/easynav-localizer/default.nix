
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-easynav-localizer";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/humble/easynav_localizer/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "158ee0376f74bfc5e46f0bdab611a62cabc3ecc2f853aab4da95acf774531146";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-common easynav-core lifecycle-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Localizer package.";
    license = with lib.licenses; [ asl20 ];
  };
}
