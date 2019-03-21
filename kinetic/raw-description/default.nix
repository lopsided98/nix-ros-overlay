
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, cob-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raw-description";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/raw_description/0.6.10-0.tar.gz;
    sha256 = "dd3edbadfdd31e297e8f97c333bd3d7c50445a5df32ac004ea8d90c9ad1967f3";
  };

  propagatedBuildInputs = [ gazebo-ros cob-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
