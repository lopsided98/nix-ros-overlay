
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-description";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback-release/archive/release/kinetic/ridgeback_description/0.2.2-0.tar.gz;
    sha256 = "a37e75af1544fc229b6fce54be8e4916f275b7863909d03d66f1037fdf226f93";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Ridgeback'';
    #license = lib.licenses.BSD;
  };
}
