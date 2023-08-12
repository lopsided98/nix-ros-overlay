
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-rmf-traffic-editor";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/iron/rmf_traffic_editor/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "b9c5e4efedecd112528d086e7796f1233382f85feeedd955ef0cf6c4086d44cb";
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
