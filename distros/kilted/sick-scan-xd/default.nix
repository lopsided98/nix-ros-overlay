
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-sick-scan-xd";
  version = "3.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_scan_xd-release/archive/release/kilted/sick_scan_xd/3.7.0-2.tar.gz";
    name = "3.7.0-2.tar.gz";
    sha256 = "af5f8b2d893be922b63d7cf6dc0038629786a7cc19e5707aea2c55789ef99eda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs rcl-interfaces rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 1 and 2 driver for SICK scanner";
    license = with lib.licenses; [ asl20 ];
  };
}
