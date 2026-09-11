
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl, nodl-common-interfaces, nodl-generator-cpp, nodl-schema, ros2nodl }:
buildRosPackage {
  pname = "ros-rolling-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "a65cddb65de947aabba3ea9648555d06f9fd3c05e3417758a78fc406c4d698bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-nodl nodl-common-interfaces nodl-generator-cpp nodl-schema ros2nodl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Node Definition Language (NoDL) metapackage.";
    license = with lib.licenses; [ asl20 ];
  };
}
