
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flir-camera-description, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, sick-tim, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-description";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_description/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "361da61ffbf9bd686ffa5c336cde209df4aeb01be4ff0aeed37e32b8a43128ff";
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
