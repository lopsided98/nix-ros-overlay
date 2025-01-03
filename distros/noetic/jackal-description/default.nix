
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpr-onav-description, flir-camera-description, lms1xx, pointgrey-camera-description, robot-state-publisher, roslaunch, sick-tim, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-jackal-description";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_description/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "9ec216a3f7d56b3846d8977f0f5da56a2ede1def72db07d9adafcb2eb4637b97";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cpr-onav-description flir-camera-description lms1xx pointgrey-camera-description robot-state-publisher sick-tim urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF robot description for Jackal";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
