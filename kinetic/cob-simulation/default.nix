
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-bringup-sim, catkin, cob-gazebo-objects, cob-gazebo-worlds, cob-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-cob-simulation";
  version = "0.7.1-r2";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_simulation/0.7.1-2.tar.gz;
    sha256 = "c1ef452128e707b246fe097c6ea507f1ff28073095750d399767bf0e0bc40fc5";
  };

  propagatedBuildInputs = [ cob-bringup-sim cob-gazebo-objects cob-gazebo-worlds cob-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_simulation stack includes packages to work with Care-O-bot within simulation environments, e.g. gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
