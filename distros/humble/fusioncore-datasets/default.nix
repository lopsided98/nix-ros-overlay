
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fusioncore-ros, geometry-msgs, nav-msgs, rclpy, robot-localization, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-fusioncore-datasets";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_datasets/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c94d72d324e43465d95f5e3cbae121addb95afb991e1307d3323c1feab4efbd4";
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
