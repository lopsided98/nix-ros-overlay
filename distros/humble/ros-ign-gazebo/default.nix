
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo";
  version = "0.244.25-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo/0.244.25-1.tar.gz";
    name = "0.244.25-1.tar.gz";
    sha256 = "720b96c480788954609fa907978610c93fcd9bfe4a299b6dc1093d22ee615390";
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
