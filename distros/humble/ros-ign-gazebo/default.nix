
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo";
  version = "0.244.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo/0.244.20-1.tar.gz";
    name = "0.244.20-1.tar.gz";
    sha256 = "e4f560d09b74a985c9c535de28a4a01566e5ac3a1ce208faa37e0760fdf77c4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = "Shim package to redirect to ros_gz_sim.";
    license = with lib.licenses; [ asl20 ];
  };
}
