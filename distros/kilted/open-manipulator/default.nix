
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, om-gravity-compensation-controller, om-joint-trajectory-command-broadcaster, om-spring-actuator-controller, open-manipulator-bringup, open-manipulator-description, open-manipulator-gui, open-manipulator-moveit-config, open-manipulator-playground, open-manipulator-teleop }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "a4b39a7d11f5630dba53451a4a4c94c86cbea4f8095ce42fe082d2f717e69678";
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
