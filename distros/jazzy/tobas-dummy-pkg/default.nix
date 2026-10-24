
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dummy-pkg";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dummy_pkg/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "5b0f292b81516cc16bc0eb3792a9c21ad292e6cf0ceab0ed7d275095784b07aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Placeholder package for nodes and other items that have not yet been implemented.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
