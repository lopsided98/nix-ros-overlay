
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, boost, system-modes, rclcpp }:
buildRosPackage {
  pname = "ros-crystal-system-modes-examples";
  version = "0.1.3-r1";

  src = fetchurl {
    url = https://github.com/microROS/system_modes-release/archive/release/crystal/system_modes_examples/0.1.3-1.tar.gz;
    sha256 = "e5a05a80230ade9371ee63541ccdcd0284441debde2c3f987968564187dd3470";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle system-modes rclcpp boost ];
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp-lifecycle system-modes rclcpp boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
