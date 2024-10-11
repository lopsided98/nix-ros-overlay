
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-platform-description, clearpath-platform-msgs, controller-interface, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, puma-motor-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "0c8d0f76d1cd3328a5e5ada777aa1fa4a61f38f6a5720e0993692f4e14340af9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-platform-description clearpath-platform-msgs controller-interface controller-manager controller-manager-msgs geometry-msgs hardware-interface nav-msgs pluginlib puma-motor-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Platform Drivers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
