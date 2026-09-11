
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl, nodl-common-interfaces, nodl-generator-cpp, nodl-schema, ros2nodl }:
buildRosPackage {
  pname = "ros-lyrical-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "2a98641dc5becc4ac708da1966869854ffe01a563674a2d09f21511000775d51";
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
