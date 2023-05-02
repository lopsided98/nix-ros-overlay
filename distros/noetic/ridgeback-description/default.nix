
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-description";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_description/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "73a9da48aea2df6f4f61c241ddc8441bf8099f441766a0add36bd0689bdd771c";
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
