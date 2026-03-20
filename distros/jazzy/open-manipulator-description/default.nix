
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, realsense2-description, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-description";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_description/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "b47cb306a6511da689e718b3a0a0729e534a1926b42da7559df632ead70af75e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui realsense2-description robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "open_manipulator_description ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
