
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffw-bringup, ffw-description, ffw-joint-trajectory-command-broadcaster, ffw-joystick-controller, ffw-moveit-config, ffw-robot-manager, ffw-spring-actuator-controller, ffw-swerve-drive-controller, ffw-teleop }:
buildRosPackage {
  pname = "ros-jazzy-ffw";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "c1b6efeac9d5c2812dbbaa7c8631eece4d9f02a065966325d632ec2bce533dfe";
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
