
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-console-util";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_console_util/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "02ed0f6d72b188904ed1c8e715024a3ea06100a90ccf449361b6aac3884c68a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
