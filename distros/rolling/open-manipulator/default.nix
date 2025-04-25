
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, om-gravity-compensation-controller, om-joint-trajectory-command-broadcaster, om-spring-actuator-controller, open-manipulator-bringup, open-manipulator-description, open-manipulator-gui, open-manipulator-moveit-config, open-manipulator-playground, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "bc224c69e81184b07c8ef151ad2a5399b89493e34cc826e5077d29d4c3fd3348";
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
