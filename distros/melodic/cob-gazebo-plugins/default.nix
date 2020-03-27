
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-plugins";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/melodic/cob_gazebo_plugins/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "d1b7bd521adfd41fd0232ba9ec0b63107f979236c7d933c3545da5e80c11455d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_gazebo_plugins meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
