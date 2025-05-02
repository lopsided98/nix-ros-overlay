
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-description";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_description/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "b683378ed4d489d74ac50aff69ba4e723fe076448e16e88825ace79297f785a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "open_manipulator_description ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
