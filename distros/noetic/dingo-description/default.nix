
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fath-pivot-mount-description, flir-camera-description, lms1xx, realsense2-description, robot-state-publisher, sick-tim, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-noetic-dingo-description";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/noetic/dingo_description/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "957f4fb1d130d726903ee70b898e4e9c0f1a673f95dd282c1d63f9c1c3f01907";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fath-pivot-mount-description flir-camera-description lms1xx realsense2-description robot-state-publisher sick-tim urdf velodyne-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
