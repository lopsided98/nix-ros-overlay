
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, python3Packages, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-ros-numpy";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/eric-wieser/ros_numpy-release/archive/release/noetic/ros_numpy/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "c5153716c9d662840ff0473a9cc0cae3c23586f5cea8ef7b152f11fe0a51d51d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs python3Packages.numpy rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of conversion function for extracting numpy arrays from messages'';
    license = with lib.licenses; [ mit ];
  };
}
