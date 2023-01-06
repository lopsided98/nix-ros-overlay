
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, proj, qt5, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "0dc55c74f540d62f142759427c25da387956fd7c4a1c53e4cc4d2f745b852f1e";
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
