
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "1f31578a0f23b34d0fee3b20e56225e852afaf968e89021c3544e31507fe64ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
