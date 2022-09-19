
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ros-gz-sim }:
buildRosPackage {
  pname = "ros-humble-ros-ign-gazebo";
  version = "0.244.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_ign_gazebo/0.244.6-1.tar.gz";
    name = "0.244.6-1.tar.gz";
    sha256 = "9b1af050e5e159facec33f9ef0d2db4bacd914d62a184ccf40ac44dd8c4ef305";
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
