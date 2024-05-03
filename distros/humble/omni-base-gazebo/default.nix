
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, omni-base-2dnav, omni-base-bringup, omni-base-controller-configuration, omni-base-description, pal-gazebo-plugins, pal-gazebo-worlds }:
buildRosPackage {
  pname = "ros-humble-omni-base-gazebo";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/omni_base_simulation-release/archive/release/humble/omni_base_gazebo/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "782b227b1fe2a0a35c1f084d8ca664943aa0af0e3b8a5ef94c612f93af2dd250";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal omni-base-2dnav omni-base-bringup omni-base-controller-configuration omni-base-description pal-gazebo-plugins pal-gazebo-worlds ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_gazebo package";
    license = with lib.licenses; [ asl20 ];
  };
}
