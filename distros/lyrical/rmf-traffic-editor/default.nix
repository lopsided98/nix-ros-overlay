
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-editor";
  version = "1.14.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/lyrical/rmf_traffic_editor/1.14.0-3.tar.gz";
    name = "1.14.0-3.tar.gz";
    sha256 = "0b64dc9505abdb3d1aeff4d8d1db19f9ca4a81c6a41bed85d4c7380a77b35f79";
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
