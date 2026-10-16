
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, tobas-std-msgs, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs-adapter";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs_adapter/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "8e4b2f558072318b72bd93e76ffd8273776b5554e93cc1ec27eef0c7cee73044";
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
