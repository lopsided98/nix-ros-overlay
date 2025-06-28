
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, om-gravity-compensation-controller, om-joint-trajectory-command-broadcaster, om-spring-actuator-controller, open-manipulator-bringup, open-manipulator-collision, open-manipulator-description, open-manipulator-gui, open-manipulator-moveit-config, open-manipulator-playground, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "5e3135364b18a11c5476581c192ce1cd2013e82b40ab97f966b132030e5cf8de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ om-gravity-compensation-controller om-joint-trajectory-command-broadcaster om-spring-actuator-controller open-manipulator-bringup open-manipulator-collision open-manipulator-description open-manipulator-gui open-manipulator-moveit-config open-manipulator-playground open-manipulator-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR meta ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
