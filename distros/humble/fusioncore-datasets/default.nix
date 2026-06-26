
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-fusioncore-datasets";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_datasets/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "2e09b0444c9a1f5e7db326ea50f2281df1bcb7d229655ad75639f5ff9ac85527";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fusioncore-ros geometry-msgs nav-msgs rclpy robot-localization rosgraph-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "NCLT dataset adapter and benchmark pipeline for FusionCore vs robot_localization";
    license = with lib.licenses; [ asl20 ];
  };
}
