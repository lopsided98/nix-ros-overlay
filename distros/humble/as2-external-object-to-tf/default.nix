
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, geometry-msgs, mocap4r2-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-as2-external-object-to-tf";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_external_object_to_tf/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "2d903d5eb7e0556a4a6814bd76f27a5287617cad97130a74eb998c2cc56f9816";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-core as2-msgs geometry-msgs mocap4r2-msgs rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Adds external objects pose to tf";
    license = with lib.licenses; [ bsd3 ];
  };
}
