
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "6c04771b19f1b13c54efc345bffb16c6322c50390ae60bb33ec50f49f6dd2849";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen qt5.qtbase rmf-utils yaml-cpp ];
  checkInputs = [ ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ceres-solver glog proj ];

  meta = {
    description = "traffic editor";
    license = with lib.licenses; [ asl20 ];
  };
}
