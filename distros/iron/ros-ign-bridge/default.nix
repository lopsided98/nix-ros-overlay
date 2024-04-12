
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-iron-ros-ign-bridge";
  version = "0.254.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_bridge/0.254.1-1.tar.gz";
    name = "0.254.1-1.tar.gz";
    sha256 = "fb22cdace78dbabd72690fed6d1a8d981ef607acb1e98267533e72ad2e30b55f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = "Shim package to redirect to ros_gz_bridge.";
    license = with lib.licenses; [ asl20 ];
  };
}
