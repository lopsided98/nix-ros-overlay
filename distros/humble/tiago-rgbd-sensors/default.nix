
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-tiago-rgbd-sensors";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_navigation-release/archive/release/humble/tiago_rgbd_sensors/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "a374836be4d227b1a4da0d7627c38bacd0cd925cf0fd3bd9b2a061e1f73becad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
