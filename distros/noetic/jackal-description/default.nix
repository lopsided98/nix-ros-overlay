
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-description";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_description/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "915b1059ce39c82b08443244b8c111a66d7d255a5908af86c1d2d4dbb50eefc8";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx pointgrey-camera-description robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
