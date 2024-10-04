
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch, launch-pal, launch-ros, pal-gazebo-plugins, pal-gazebo-worlds, play-motion2-msgs, talos-controller-configuration, talos-description }:
buildRosPackage {
  pname = "ros-humble-talos-gazebo";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_simulation-release/archive/release/humble/talos_gazebo/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "ed1c6384bafd82faba6060199f776e8d3742b271d4c0910a1397dc6ab973909a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch launch-pal launch-ros pal-gazebo-plugins pal-gazebo-worlds play-motion2-msgs talos-controller-configuration talos-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The talos_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
