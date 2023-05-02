
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, sick-tim, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-description";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_description/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "5f7a7eae1c81fa7590574e9eecfc5f56dc3ac2b9bc93a04a4b92470e033483de";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ flir-camera-description lms1xx pointgrey-camera-description robot-state-publisher sick-tim urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
