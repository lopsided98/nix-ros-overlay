
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-editor";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/jazzy/rmf_traffic_editor/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "945c6e0c7a3d8c7b21b36e3bf33f129b64092e8e3f867c53aac36e3145cc1ba4";
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
