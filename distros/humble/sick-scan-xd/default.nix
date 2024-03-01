
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, diagnostic-msgs, diagnostic-updater, geometry-msgs, nav-msgs, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-sick-scan-xd";
  version = "3.1.11-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_scan_xd-release/archive/release/humble/sick_scan_xd/3.1.11-3.tar.gz";
    name = "3.1.11-3.tar.gz";
    sha256 = "6fa1966620d69c090a7e28defea775aaa6724dcbb2f881d36138d08de51aa92a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater geometry-msgs nav-msgs rcl-interfaces rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 1 and 2 driver for SICK scanner'';
    license = with lib.licenses; [ "Apache-License,-Version-2.0,-see-"http-www.apache.org-licenses-LICENSE-2.0"" ];
  };
}
