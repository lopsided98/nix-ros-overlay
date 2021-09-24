
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, qt5 }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic-editor";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/galactic/rmf_traffic_editor/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7ec2d4374b8f9db87284509e7a0f6e0c1da92a4a3c72feebce91911bf6022310";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen libyamlcpp qt5.qtbase ];
  propagatedBuildInputs = [ ceres-solver glog ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
