
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-control, clearpath-platform-description, clearpath-platform-msgs, controller-interface, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_platform/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "63503f3badb36efe91668fede82261000700a0463aa591d24c8150095956d1c4";
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
