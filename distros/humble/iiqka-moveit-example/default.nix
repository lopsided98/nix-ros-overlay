
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-iiqka-eac-driver, moveit, moveit-ros-planning-interface, moveit-visual-tools, ros2-controllers-test-nodes }:
buildRosPackage {
  pname = "ros-humble-iiqka-moveit-example";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/iiqka_moveit_example/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "570ffeed39b6309f8b72816bf5dfbcd4ad7e464d83ddaf044657891dddc3acb4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kuka-iiqka-eac-driver moveit moveit-ros-planning-interface moveit-visual-tools ros2-controllers-test-nodes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS example package using the iiQKA driver and moveit";
    license = with lib.licenses; [ asl20 ];
  };
}
