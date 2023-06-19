
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-ros-ign-bridge";
  version = "0.244.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_bridge/0.244.11-1.tar.gz";
    name = "0.244.11-1.tar.gz";
    sha256 = "1d4eb4f99bfb2f41598548a853906b972367fbd07745299178e40722f1175ec7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-bridge ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_bridge.'';
    license = with lib.licenses; [ asl20 ];
  };
}
