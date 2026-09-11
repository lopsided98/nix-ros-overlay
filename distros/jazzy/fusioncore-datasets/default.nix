
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-datasets";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_datasets/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "9d277ecf1518d135fadd0b78ced8ea42142d73caa4cab22bc299b1b781fdd7b0";
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
