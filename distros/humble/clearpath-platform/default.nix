
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-platform-description, clearpath-platform-msgs, controller-interface, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "54f05d266f9a87bd81310c97b89d5f9dc34f4a36617c7ece1cb9dfe5d481bca4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-platform-description clearpath-platform-msgs controller-interface controller-manager controller-manager-msgs geometry-msgs hardware-interface nav-msgs pluginlib rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Platform Drivers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
