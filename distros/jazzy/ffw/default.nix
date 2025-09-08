
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffw-bringup, ffw-description, ffw-joint-trajectory-command-broadcaster, ffw-joystick-controller, ffw-moveit-config, ffw-spring-actuator-controller, ffw-teleop }:
buildRosPackage {
  pname = "ros-jazzy-ffw";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "33fdc3cdcbad153e46952408328f650e5a18a858361c814d67ce57e147771e4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ffw-bringup ffw-description ffw-joint-trajectory-command-broadcaster ffw-joystick-controller ffw-moveit-config ffw-spring-actuator-controller ffw-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 meta package for FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
