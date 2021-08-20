
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, gazebo-plugins, gazebo-ros, launch-pal, pal-gazebo-worlds, pmb2-bringup, pmb2-controller-configuration, pmb2-description }:
buildRosPackage {
  pname = "ros-foxy-pmb2-gazebo";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/pmb2_gazebo/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "735644418c80be5265f5f6b67159752ab940292fcd4a0ae1ce59617a5daeea8d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros launch-pal pal-gazebo-worlds pmb2-bringup pmb2-controller-configuration pmb2-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Simulation files for the PMB2 robot.'';
    license = with lib.licenses; [ "Modified BSD" ];
  };
}
