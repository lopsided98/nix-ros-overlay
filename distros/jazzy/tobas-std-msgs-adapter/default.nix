
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, tobas-std-msgs, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs-adapter";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs_adapter/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5afa14401d7870ac3bcf29a425d3c052d0b5edbb3c94d507e93c3e6c1d2fca8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp tobas-std-msgs tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for extended standard scalar and pair messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
