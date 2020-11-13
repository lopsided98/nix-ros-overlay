
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, realsense2-description, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "354bfc89159892347217515c553e8d5efa73848adaca75d6028a1d868f287661";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lms1xx realsense2-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
