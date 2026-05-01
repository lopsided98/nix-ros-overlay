
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-interfaces, auto-apms-mission, auto-apms-ros2behavior, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-lyrical-auto-apms-examples";
  version = "1.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/lyrical/auto_apms_examples/1.5.1-3.tar.gz";
    name = "1.5.1-3.tar.gz";
    sha256 = "d5bd1b55d6f2c935188e76d55e5f99c8f3295032b96a78c30217ec1dbe30de21";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ];
  propagatedBuildInputs = [ auto-apms-behavior-tree auto-apms-interfaces auto-apms-mission auto-apms-ros2behavior auto-apms-util rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples package for AutoAPMS";
    license = with lib.licenses; [ asl20 ];
  };
}
