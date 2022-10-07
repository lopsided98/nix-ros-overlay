
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-simple-launch";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/foxy/simple_launch/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "6964c89767d24c9a77390fb70007a005de49c439708409482d011e189575a0b3";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
