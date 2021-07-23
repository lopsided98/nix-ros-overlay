
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, qt5 }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-editor";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_traffic_editor/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "07a2a5cb5e86765880732a46a69a715c0fa1792ff62b21d172ee14956d82c840";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen libyamlcpp qt5.qtbase ];
  propagatedBuildInputs = [ ceres-solver glog ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
