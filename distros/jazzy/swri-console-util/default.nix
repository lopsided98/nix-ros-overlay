
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-console-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_console_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "dfd295c4adbe4e369148b16ae05b00065028800962cca99e91c2081f683071c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "swri_console_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
