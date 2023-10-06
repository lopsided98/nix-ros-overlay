
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-humble-simple-launch";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/humble/simple_launch/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "63b64bc0b1805f0d073db1bfd5da41ccea0faf42211233d984cdcba6d2d66909";
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
