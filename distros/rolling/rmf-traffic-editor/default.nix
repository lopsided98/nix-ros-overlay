
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, proj, qt5, rmf-utils }:
buildRosPackage {
  pname = "ros-rolling-rmf-traffic-editor";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/rolling/rmf_traffic_editor/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "0b8029a0cee076e91c238d19d3d953a991d82c812b8c2d35a63c1efc096b3ab5";
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
