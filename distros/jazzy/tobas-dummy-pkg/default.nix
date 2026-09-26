
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dummy-pkg";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dummy_pkg/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "1e757a54e2dad558a503e97b125deb48a64c3296f8c79ed605c5b0c0fcb5caf9";
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
