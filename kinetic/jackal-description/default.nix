
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pointgrey-camera-description, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-kinetic-jackal-description";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_description/0.6.2-0.tar.gz;
    sha256 = "4c2d0cbf6fd755476a1a7872639929c7d5277a3e4f258091df26e5c959f8f70c";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf robot-state-publisher pointgrey-camera-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    #license = lib.licenses.BSD;
  };
}
