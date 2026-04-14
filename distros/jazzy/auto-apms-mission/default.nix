
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-mission";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_mission/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "5cda1f31408bb489c1507f6ee734700d779c5162718a072b2cdb2acddc8d853d";
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
