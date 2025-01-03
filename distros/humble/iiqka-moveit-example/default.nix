
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-iiqka-eac-driver, moveit, moveit-ros-planning-interface, moveit-visual-tools, ros2-controllers-test-nodes }:
buildRosPackage {
  pname = "ros-humble-iiqka-moveit-example";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/iiqka_moveit_example/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "d25c7ed1667325ca433f0429cde4f2c371c1f39d0114d341c2aa617cc40f38fc";
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
