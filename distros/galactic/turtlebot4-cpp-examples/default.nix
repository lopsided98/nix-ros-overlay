
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, depthai-bridge, depthai-ros-msgs, image-transport, opencv, rclcpp, sensor-msgs, std-msgs, stereo-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-cpp-examples";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_examples-release/archive/release/galactic/turtlebot4_cpp_examples/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "66850c03ecc56ebf6117ffbae71be205ae8d9897a332dd2e537b5f017019ab4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depthai-bridge depthai-ros-msgs image-transport opencv rclcpp sensor-msgs std-msgs stereo-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TurtleBot 4 C++ Examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
