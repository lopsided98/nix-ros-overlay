
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-husky-description";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_description/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "fedf90617d9fb41b2d5f2df85a59667c98886c991f4ffdcc8dd16a3e060aeb9b";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky URDF description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
