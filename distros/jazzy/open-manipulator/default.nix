
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, om-gravity-compensation-controller, om-joint-trajectory-command-broadcaster, om-spring-actuator-controller, open-manipulator-bringup, open-manipulator-description, open-manipulator-gui, open-manipulator-moveit-config, open-manipulator-playground, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "75a1e5cb4d656ec69072123f654ba530fe6e2e6e968df549b1b2a83fbfb90223";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ om-gravity-compensation-controller om-joint-trajectory-command-broadcaster om-spring-actuator-controller open-manipulator-bringup open-manipulator-description open-manipulator-gui open-manipulator-moveit-config open-manipulator-playground open-manipulator-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR meta ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
