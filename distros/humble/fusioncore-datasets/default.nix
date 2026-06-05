
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-fusioncore-datasets";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_datasets/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8a30b22d51d5c47bcaafd6759b14bb6c44a8158fce76d2a6c744b02e4c4b9571";
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
