
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-gazebo-common, tobas-gazebo-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-ros";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_ros/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "a1e866258b0effeeeb8e4cfe5fc1ded17daf54160eca5671698e111a04779c85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-gazebo-common tobas-gazebo-msgs tobas-msgs-adapter tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 bridges between Tobas flight interfaces and Gazebo transport.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
