
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo";
  version = "0.244.22-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo/0.244.22-1.tar.gz";
    name = "0.244.22-1.tar.gz";
    sha256 = "9a661d47117849344267d79092a43f0e681dbd811f4af8779aed7eaa5518d216";
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
