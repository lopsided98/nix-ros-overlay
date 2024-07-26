
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-sick-scan-xd";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_scan_xd-release/archive/release/iron/sick_scan_xd/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "2c846bcd03f617c434b0b8770ce3aaf0e99dc09b1c455c0fed1bb97f709516b6";
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
