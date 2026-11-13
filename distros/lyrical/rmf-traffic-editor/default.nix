
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, proj, qt5, rmf-utils, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmf-traffic-editor";
  version = "1.14.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/lyrical/rmf_traffic_editor/1.14.1-2.tar.gz";
    name = "1.14.1-2.tar.gz";
    sha256 = "8aa3bee410d21aa65830c3e00be5c8c20b2f5d38f3d94d866c9b746773e5cb6e";
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
