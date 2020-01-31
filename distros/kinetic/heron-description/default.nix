
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "819c01bc20489d1aa9f75516729f5aca7a34a52f53dced0f562c1fb676c8715e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
