
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-plugins, pal-gazebo-worlds, play-motion2-msgs, talos-bringup, talos-controller-configuration, talos-description, talos-moveit-config }:
buildRosPackage {
  pname = "ros-humble-talos-gazebo";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_simulation-release/archive/release/humble/talos_gazebo/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "5f62ee1fcea3d5ff3243b70a4effc59a1a10fa91fa29daa4d2f03a0752cf4010";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds play-motion2-msgs talos-bringup talos-controller-configuration talos-description talos-moveit-config ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
