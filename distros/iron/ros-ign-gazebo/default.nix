
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-iron-ros-ign-gazebo";
  version = "0.247.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/iron/ros_ign_gazebo/0.247.0-1.tar.gz";
    name = "0.247.0-1.tar.gz";
    sha256 = "57e095e21a7fc8131f91b48419039ea1044183c5a3ed177b4a81cb0dfe17a7cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp ];
  propagatedBuildInputs = [ ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ament-index-cpp ];

  meta = {
    description = ''Shim package to redirect to ros_gz_sim.'';
    license = with lib.licenses; [ asl20 ];
  };
}
