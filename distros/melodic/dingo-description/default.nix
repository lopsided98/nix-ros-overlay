
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "278046bca75cf452ce5c161c5588fa8138e6ea6a7f847ae9b6c69ea1c79140d8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
