
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-realtime-tools";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/galactic/realtime_tools/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "4126ff1601cf3dd58c01280a4cf320d53b1350c389918853002332eb445e533b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp-action test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
