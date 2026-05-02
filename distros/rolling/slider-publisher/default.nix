
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-slider-publisher";
  version = "2.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/rolling/slider_publisher/2.4.3-2.tar.gz";
    name = "2.4.3-2.tar.gz";
    sha256 = "f86dd1f1b41d84376e6b12dd6533e57475e239cba34e0f7b47c1028a933ea4d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}
