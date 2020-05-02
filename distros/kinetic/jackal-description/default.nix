
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-jackal-description";
  version = "0.6.5-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_description/0.6.5-2.tar.gz";
    name = "0.6.5-2.tar.gz";
    sha256 = "0d7b5e317d400bdce94acc32d4c1a34aea12ed72759e9c2eabc9676c418090fa";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx pointgrey-camera-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
