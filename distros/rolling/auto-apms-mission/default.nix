
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, auto-apms-behavior-tree, auto-apms-util, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-mission";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_mission/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "d4fa21caf61c7407c7a04614468d91fc41e9587bd954de14a16b043230879e1f";
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
