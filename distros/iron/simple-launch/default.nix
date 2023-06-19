
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-iron-simple-launch";
  version = "1.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/iron/simple_launch/1.7.0-3.tar.gz";
    name = "1.7.0-3.tar.gz";
    sha256 = "7a53a623f847e1e9c117a97e9ee8f856c70750bdcbf6cfeda0114d181be31a48";
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
