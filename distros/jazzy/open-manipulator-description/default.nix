
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-description";
  version = "4.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_description/4.0.7-1.tar.gz";
    name = "4.0.7-1.tar.gz";
    sha256 = "d752bc68336f81a5e004710eada0832ec010e96d8214a44e836b26b133f6e705";
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
