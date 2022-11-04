
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-console-util";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_console_util/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "cfac37cc8f58fb2be6af9517e7bb86afdb692741921f4912714e138e363a1391";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
