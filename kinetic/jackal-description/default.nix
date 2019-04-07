
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pointgrey-camera-description, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-jackal-description";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_description/0.6.1-0.tar.gz;
    sha256 = "a3b42c512b8362b594165c7d8b4037c8bbb0802c2400f361a4cadafd0e229b7d";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf robot-state-publisher pointgrey-camera-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    #license = lib.licenses.BSD;
  };
}
