
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-description";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_description/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "a0b8c5b08dfe299bac47cb533e768dd7146588662ee48a5b3e4a396b0e5ea3ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF robot description for Ridgeback";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
