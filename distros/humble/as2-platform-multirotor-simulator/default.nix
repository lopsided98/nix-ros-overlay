
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, rclcpp, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-platform-multirotor-simulator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_platform_multirotor_simulator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a989c92e83fc5c4ab4dcbc9cfcc1da1c968c5dee359077efb18ee9b5d7867182";
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
