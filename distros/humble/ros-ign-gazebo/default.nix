
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo";
  version = "0.244.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo/0.244.21-1.tar.gz";
    name = "0.244.21-1.tar.gz";
    sha256 = "2d6b75c4afa4384655e5f56fe910951d156d3569c218140b0395da9df7c61805";
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
