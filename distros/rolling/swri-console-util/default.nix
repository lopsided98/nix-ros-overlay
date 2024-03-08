
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-console-util";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_console_util/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "ca48f16dbb49fcf84789996f02a5c557e4979d983a69f07671a22e9b9315f3e9";
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
