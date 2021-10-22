
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, gazebo-ros2-control, launch-pal, pal-gazebo-worlds, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-foxy-pmb2-gazebo";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/pmb2_gazebo/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f2bd33f70cd2db2de754ba928f551100d6e61c3548ac6c81a541aa00c65584b2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros2-control launch-pal pal-gazebo-worlds pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simulation files for the PMB2 robot.'';
    license = with lib.licenses; [ "Modified BSD" ];
  };
}
