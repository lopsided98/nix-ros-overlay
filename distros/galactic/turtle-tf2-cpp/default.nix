
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch, launch-ros, rclcpp, tf2, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-galactic-turtle-tf2-cpp";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/galactic/turtle_tf2_cpp/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "6888a79a8f9b4ca2442f9fd1942b04ab912dbd582e0bf4acd9a7921ccd81971d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros rclcpp tf2 tf2-ros turtlesim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''turtle_tf2_cpp demonstrates how to write a ROS2 C++ tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 ];
  };
}
