
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dummy-pkg";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dummy_pkg/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "c3d9cbb844decdfd07abc8ae6b77f6c8971cb78fc7d466652ae42beec8a4b571";
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
