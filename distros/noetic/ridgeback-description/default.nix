
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-description";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_description/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "e42a070007eec9e4f23026a3de9c3781067b25e4ff60693fe324ffa1498871b8";
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
