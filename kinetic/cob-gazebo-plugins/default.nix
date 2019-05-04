
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-plugins";
  version = "0.7.2";

  src = fetchurl {
    url = https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_plugins/0.7.2-0.tar.gz;
    sha256 = "23fe1fcbdecd6db57ffc9d1bf27413a40b25ea4748c46f25eba017549274c370";
  };

  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
