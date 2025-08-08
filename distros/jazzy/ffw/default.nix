
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffw-bringup, ffw-description, ffw-joint-trajectory-command-broadcaster, ffw-joystick-controller, ffw-moveit-config, ffw-spring-actuator-controller, ffw-swerve-drive-controller, ffw-teleop }:
buildRosPackage {
  pname = "ros-jazzy-ffw";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "e6f178203eafc321bd67189846202894ae637635541307f501bf6d9edd5ebff6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ffw-bringup ffw-description ffw-joint-trajectory-command-broadcaster ffw-joystick-controller ffw-moveit-config ffw-spring-actuator-controller ffw-swerve-drive-controller ffw-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 meta package for FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
