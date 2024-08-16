
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, mocap4r2-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-external-object-to-tf";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_external_object_to_tf/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4e1ca582638e7d83e381e6c886e2f6e07b916a059f8e1e42170dfcee1da9f7e3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs geometry-msgs mocap4r2-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Adds external objects pose to tf";
    license = with lib.licenses; [ "BDS-3" ];
  };
}
