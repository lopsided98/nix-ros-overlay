
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, om-gravity-compensation-controller, om-joint-trajectory-command-broadcaster, om-spring-actuator-controller, open-manipulator-bringup, open-manipulator-collision, open-manipulator-description, open-manipulator-gui, open-manipulator-moveit-config, open-manipulator-playground, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "f47f883dea465decaf53e0922c95f2ad980c9fdb4c1b6fb19a4a39089653fb65";
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
