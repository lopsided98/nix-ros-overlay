
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, omni-base-2dnav, omni-base-bringup, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6b729ed1b82794072de36a353d3e095971017b011dfc3e4bdc2e37327c8a6da5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal omni-base-2dnav omni-base-bringup omni-base-description pal-gazebo-plugins pal-gazebo-worlds ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
