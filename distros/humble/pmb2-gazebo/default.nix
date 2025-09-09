
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, pmb2-2dnav, pmb2-bringup, pmb2-description, pmb2-laser-sensors, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.8.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.8.0-1.tar.gz";
    name = "4.8.0-1.tar.gz";
    sha256 = "5a6317bd5061df8a062f7cda1bbdf5b8e2afc99ef6a24f3757733e0ee14b41cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils pmb2-2dnav pmb2-bringup pmb2-description pmb2-laser-sensors ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Simulation files for the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
