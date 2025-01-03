
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-multirotor-simulator";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_multirotor_simulator/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "14b0421a8797e59a132e294c50854a121c61ef304a174dba205fa5ccef12329d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-cpp as2-core as2-msgs rclcpp std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightweight simulator";
    license = with lib.licenses; [ "BDS-3" ];
  };
}
