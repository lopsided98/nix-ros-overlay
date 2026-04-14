
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-interfaces, auto-apms-mission, auto-apms-ros2behavior, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-examples";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_examples/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "fbadbf00bdd331764e4a20228cf272b0d2322206f2f0ddc6a50034bbdfe0b072";
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
