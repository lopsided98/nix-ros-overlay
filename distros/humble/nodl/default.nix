
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-nodl, nodl-common-interfaces, nodl-generator-cpp, nodl-schema, ros2nodl }:
buildRosPackage {
  pname = "ros-humble-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "0dd2eb72cd8f61a639faa00b775b98272d2ac0abe8529ad7eb61bfeb4e6bdff6";
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
