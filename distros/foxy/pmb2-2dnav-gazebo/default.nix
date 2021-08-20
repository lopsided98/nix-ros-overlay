
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, pmb2-2dnav, pmb2-gazebo }:
buildRosPackage {
  pname = "ros-foxy-pmb2-2dnav-gazebo";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_simulation-gbp/archive/release/foxy/pmb2_2dnav_gazebo/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "588064ee3de24260efde52b106b49951a1e1c07aa28d396a7712bfd57c3ba579";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pmb2-2dnav pmb2-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''PMB2-specific launch files needed to run
    navigation on the PMB2 robot.'';
    license = with lib.licenses; [ "Modified BSD" ];
  };
}
