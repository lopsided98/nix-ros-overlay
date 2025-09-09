
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffw-bringup, ffw-description, ffw-joint-trajectory-command-broadcaster, ffw-joystick-controller, ffw-moveit-config, ffw-robot-manager, ffw-spring-actuator-controller, ffw-swerve-drive-controller, ffw-teleop }:
buildRosPackage {
  pname = "ros-jazzy-ffw";
  version = "1.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw/1.1.11-1.tar.gz";
    name = "1.1.11-1.tar.gz";
    sha256 = "8919a4ef9465f9ff458f031495e207889dd785b73fea999e7c85b59fcc7313eb";
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
