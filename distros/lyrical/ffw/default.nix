
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffw-bringup, ffw-description, ffw-joint-trajectory-command-broadcaster, ffw-joystick-controller, ffw-moveit-config, ffw-robot-manager, ffw-spring-actuator-controller, ffw-swerve-drive-controller, ffw-teleop }:
buildRosPackage {
  pname = "ros-lyrical-ffw";
  version = "1.1.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/lyrical/ffw/1.1.14-3.tar.gz";
    name = "1.1.14-3.tar.gz";
    sha256 = "c522ad091675b68952e684e80be6c6885e61a0122d546e4cfc99f449e69e2aaf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ffw-bringup ffw-description ffw-joint-trajectory-command-broadcaster ffw-joystick-controller ffw-moveit-config ffw-robot-manager ffw-spring-actuator-controller ffw-swerve-drive-controller ffw-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 meta package for FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
