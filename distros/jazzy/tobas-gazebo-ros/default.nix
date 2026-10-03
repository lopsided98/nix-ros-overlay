
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-gazebo-common, tobas-gazebo-msgs, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-ros";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_ros/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "1c15c74543e9ccd7c32cf27a5b4b7f2bcce5c027efe23df602b80f4bb0e5f466";
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
