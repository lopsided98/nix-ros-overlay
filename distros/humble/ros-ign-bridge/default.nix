
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-bridge }:
buildRosPackage {
  pname = "ros-humble-ros-ign-bridge";
  version = "0.244.27-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_bridge/0.244.27-1.tar.gz";
    name = "0.244.27-1.tar.gz";
    sha256 = "a28a2b82d5776c87b6ebe3b204af50192b87a1cebc405d6a9164c1ecfc92d703";
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
