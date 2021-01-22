
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-plugins";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_plugins/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "d9130f522461d01fef133b59f192732da7427a2adbe4d9dd33f5db7e39e99673";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
