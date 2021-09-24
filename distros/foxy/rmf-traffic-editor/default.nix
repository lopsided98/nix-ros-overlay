
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, qt5 }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-editor";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/foxy/rmf_traffic_editor/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e0cb039e8af01b6d098e8ebcca5bfbf50130049185b9818888aa2d912ef53d08";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen libyamlcpp qt5.qtbase ];
  propagatedBuildInputs = [ ceres-solver glog ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
