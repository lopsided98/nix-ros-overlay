
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, tobas-std-msgs, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs-adapter";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs_adapter/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "b7a39c47080bf7e9a66602e8398fed4cb3e3c39009e2b0b957847a78c002f303";
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
