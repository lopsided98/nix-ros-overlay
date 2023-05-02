
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, proj, qt5, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "e058699b611c5c235da816ad031394262eaa4e1f7592f6cb6278d037bf517e9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen libyamlcpp qt5.qtbase rmf-utils ];
  checkInputs = [ ament-cmake-uncrustify ];
  propagatedBuildInputs = [ ceres-solver glog proj ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
