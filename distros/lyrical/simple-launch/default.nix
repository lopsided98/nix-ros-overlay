
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-simple-launch";
  version = "1.11.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/lyrical/simple_launch/1.11.4-3.tar.gz";
    name = "1.11.4-3.tar.gz";
    sha256 = "1bd9828184212cff4bea8701f53eb8b9c5ad941379258eeefc727e755e3e831f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Python helper class for the ROS 2 launch system";
    license = with lib.licenses; [ mit ];
  };
}
