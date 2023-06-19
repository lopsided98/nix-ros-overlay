
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-description";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_description/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "00c742f64df089a27d09250b9f9e615889c2bf00d93c00ae640c3fa83376f22c";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
