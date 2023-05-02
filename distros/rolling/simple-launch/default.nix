
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-simple-launch";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/rolling/simple_launch/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "1a12eb5bb131fad10eb23231746989f84989d7eb1b8a70c967ca1cb78785da7b";
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
