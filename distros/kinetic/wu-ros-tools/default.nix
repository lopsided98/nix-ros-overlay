
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, easy-markers, joy-listener, kalman-filter, rosbaglive }:
buildRosPackage {
  pname = "ros-kinetic-wu-ros-tools";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/wu_ros_tools/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "54af143f632a19a42e35f21fc98a15cede5980ce94889b82259adce0d1da2c1a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ easy-markers joy-listener kalman-filter rosbaglive ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of tools for making a variety of generic ROS-related tasks easier.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
