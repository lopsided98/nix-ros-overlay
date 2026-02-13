
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, nav2-bringup, omni-base-2dnav, omni-base-bringup, omni-base-description, omni-base-laser-sensors, omni-base-rgbd-sensors, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.11.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.11.1-1.tar.gz";
    name = "2.11.1-1.tar.gz";
    sha256 = "b8bc8235dde51e19c3b3607aa3c64b8b513b37ae8418c37d0d5ecc23f5a5157d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal nav2-bringup omni-base-2dnav omni-base-bringup omni-base-description omni-base-laser-sensors omni-base-rgbd-sensors pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
