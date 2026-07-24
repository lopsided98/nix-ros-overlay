
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-lbr-iiwa-support";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_lbr_iiwa_support/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6e9d1c9c9736c63c965bc7f9f8fe588ee44088edd73212fe37bd863147751e38";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake rviz2 ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-resources launch-ros robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 support package for the KUKA LBR iiwa";
    license = with lib.licenses; [ asl20 ];
  };
}
