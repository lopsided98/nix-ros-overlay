
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl, nodl-common-interfaces, nodl-generator-cpp, nodl-schema, ros2nodl }:
buildRosPackage {
  pname = "ros-kilted-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/kilted/nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "0a7380901811152b45ae3a65a4f6cc0a9367f56f9fad9462f296392d1c02293d";
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
