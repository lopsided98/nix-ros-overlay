
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-platform-description, clearpath-platform-msgs, controller-interface, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "14971a741ebb82346e2c48c5b5362bb75f19b993ad06544f31837292b58f5dbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-control clearpath-platform-description clearpath-platform-msgs controller-interface controller-manager controller-manager-msgs geometry-msgs hardware-interface nav-msgs pluginlib rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Platform Drivers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
