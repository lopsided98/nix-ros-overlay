
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-kilted-auto-apms-mission";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/kilted/auto_apms_mission/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "7286605295d53b76c02fdf1e2230e4b1f8508f67a3944693ecb9cfc7a69580ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ];
  propagatedBuildInputs = [ auto-apms-behavior-tree auto-apms-util rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of AutoAPMS's automated mission management system";
    license = with lib.licenses; [ asl20 ];
  };
}
