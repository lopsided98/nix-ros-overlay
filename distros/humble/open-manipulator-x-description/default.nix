
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2 }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-description";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_description/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "657f71014fa45b5f9ef1eb7b13d94fd1ba0540032ec66317ebec65955467d8e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "open_manipulator_x_description ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
