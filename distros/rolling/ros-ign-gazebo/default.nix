
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-rolling-ros-ign-gazebo";
  version = "0.245.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign_gazebo/0.245.0-1.tar.gz";
    name = "0.245.0-1.tar.gz";
    sha256 = "106e4646d6d2e1566c0dbfa0ebf570221ec662663de8927f333276ee7b4ffb66";
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
