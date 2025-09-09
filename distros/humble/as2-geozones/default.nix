
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geographic-msgs, geometry-msgs, nav-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-as2-geozones";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_geozones/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "5e64ae29005dc211eb11b2ea3b5d9357b7c49952f05d52ab1a00634568e9589c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs geographic-msgs geometry-msgs nav-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Geozones for AeroStack2";
    license = with lib.licenses; [ bsd3 ];
  };
}
