
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor";
  version = "1.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor/1.8.2-1.tar.gz";
    name = "1.8.2-1.tar.gz";
    sha256 = "ef2d4ab553a35e43652e36c688bb359b238bbb104865700fe633f258f99cb9d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen qt5.qtbase rmf-utils yaml-cpp ];
  checkInputs = [ ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ceres-solver glog proj ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
