
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-simple-launch";
  version = "1.9.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/rolling/simple_launch/1.9.1-2.tar.gz";
    name = "1.9.1-2.tar.gz";
    sha256 = "1311f8dda92f013e2066cf0cb305ee25a9bbbdc0211ecb7f987117e57b077aea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
