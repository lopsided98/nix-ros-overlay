
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-datasets";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_datasets/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "1f0b22463a56eb57d264e89c9383f929cb3859a4025e2a856c8ed9bd28564675";
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
