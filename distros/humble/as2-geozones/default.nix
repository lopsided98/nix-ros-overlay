
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-geozones";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_geozones/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "fd375f2fbfe521a8fee75b138bbaf458a8cfd6d8c687a355f2c10e7c3860930b";
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
