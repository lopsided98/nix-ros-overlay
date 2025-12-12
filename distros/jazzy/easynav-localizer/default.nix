
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, easynav-core, lifecycle-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-easynav-localizer";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_localizer/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "1173444b6b708522dc0aadc206138cba60abfe21bed0d7bf047c6a2283c8bc75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ easynav-core lifecycle-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Localizer package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
