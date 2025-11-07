
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, nav2-bringup, omni-base-2dnav, omni-base-bringup, omni-base-description, omni-base-laser-sensors, pal-gazebo-plugins, pal-gazebo-worlds, pal-maps, pal-urdf-utils, ros2launch }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "199eaba89a63aa1782b30383109e761365b83fe9719a40a11248296a889163a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal nav2-bringup omni-base-2dnav omni-base-bringup omni-base-description omni-base-laser-sensors pal-gazebo-plugins pal-gazebo-worlds pal-maps pal-urdf-utils ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
