
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, proj, qt5, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor";
  version = "1.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor/1.6.1-1.tar.gz";
    name = "1.6.1-1.tar.gz";
    sha256 = "e790760e33d674bca376cc71251bc01f3450c41a0152715bd431df9b4ea16f22";
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
