
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, tobas-std-msgs, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-std-msgs-adapter";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_std_msgs_adapter/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "6a6da16a3b6b54f7d0972221f1297f5344944b53ca996f9cc620b30fc6526c8c";
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
