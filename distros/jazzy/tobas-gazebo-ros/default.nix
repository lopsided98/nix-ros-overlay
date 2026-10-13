
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-gazebo-common, tobas-gazebo-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-ros";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_ros/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "fe423b34d9828ed275db9e599ca380c356a82ce1be03ded93d85995d037db216";
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
