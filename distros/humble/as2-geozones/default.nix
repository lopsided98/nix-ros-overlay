
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-geozones";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_geozones/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "712bde0d5acefc1897e5b6d7ad12bfd1119bb63ed730395400951dcd4b68a5ba";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs geographic-msgs geometry-msgs nav-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Geozones for AeroStack2";
    license = with lib.licenses; [ "BDS-3-Clause" ];
  };
}
