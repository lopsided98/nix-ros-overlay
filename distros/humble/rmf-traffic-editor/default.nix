
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-uncrustify, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, proj, qt5, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic-editor";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/humble/rmf_traffic_editor/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "4e1dc10dbde75e20924551fa258c723a3ed61c106511d49c8acf327af2b8ca6f";
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
