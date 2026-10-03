
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-gamepad-core, tobas-gamepad-ros }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gamepad";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gamepad/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "0b48b5784890d369b09a754606f79b26473665094f9255bf0c99241e7a05213a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-gamepad-core tobas-gamepad-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for gamepad input and ROS 2 integration.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
