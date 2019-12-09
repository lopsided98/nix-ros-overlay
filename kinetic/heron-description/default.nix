
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, robot-state-publisher, catkin, roslaunch, lms1xx }:
buildRosPackage {
  pname = "ros-kinetic-heron-description";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_description/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "d566ac820693cbcce3ddf64a4ed8520f0f44dd31ac3491b565d5f39429e32269";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher xacro urdf lms1xx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
