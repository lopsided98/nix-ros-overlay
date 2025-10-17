
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-roadmap-explorer-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roadmap_explorer-release/archive/release/humble/roadmap_explorer_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "8708be41c1dbe0da557b621eba0a0e2c972d21a7e5f843c9e1ede350324d5863";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ geometry-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package that has the ROS 2 interfaces for running roadmap-explorer";
    license = with lib.licenses; [ asl20 ];
  };
}
