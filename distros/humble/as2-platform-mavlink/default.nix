
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, eigen, geometry-msgs, mavros, mavros-extras, mavros-msgs, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-mavlink";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/as2_platform_mavlink-release/archive/release/humble/as2_platform_mavlink/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f43c8b8ebc31d267de833ada2b6d2d80f04984360dd9afbed46a8e732c4f5d11";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs eigen geometry-msgs mavros mavros-extras mavros-msgs nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to communicate Mavlink based drones with Aerostack2 framework";
    license = with lib.licenses; [ bsd3 ];
  };
}
