
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-kilted-simple-launch";
  version = "1.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/kilted/simple_launch/1.11.0-2.tar.gz";
    name = "1.11.0-2.tar.gz";
    sha256 = "011d3da1acba47c7bd280db7e1c710651d2ee6266b6d1c56763c361a970490d2";
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
