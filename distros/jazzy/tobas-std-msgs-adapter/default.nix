
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, tobas-std-msgs, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs-adapter";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs_adapter/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "0d9d245e6e4f7870d863c2b29cbe3cbb7ea38bf9d88dc9d7ec8461a5b5509927";
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
