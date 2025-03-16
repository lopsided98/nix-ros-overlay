
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, omni-base-2dnav, omni-base-bringup, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "52a219a7d2932a721a4b68cd95392a0b534eb7d77108951bac717c085d3d715a";
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
