
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-worlds, pmb2-2dnav, pmb2-bringup, pmb2-description }:
buildRosPackage {
  pname = "ros-humble-pmb2-gazebo";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-release/archive/release/humble/pmb2_gazebo/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "37f644abf9f93d84420c9347fee946013910d15f4bf1b0e5c09da5d5ce92a3f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-worlds pmb2-2dnav pmb2-bringup pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simulation files for the PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
