
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dummy-pkg";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dummy_pkg/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "4d7553ca274686c2d81badcba711bdf89097bd8d7c74a3388f073ade7032dfbc";
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
