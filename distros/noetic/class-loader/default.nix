
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, poco }:
buildRosPackage {
  pname = "ros-noetic-class-loader";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/class_loader-release/archive/release/noetic/class_loader/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "7657a7db4650dda3bf66e2c407f6ab64716e26cc6f29718efd3dbec553339e34";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ boost console-bridge poco ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library. class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of said exported classes without the explicit declaration (i.e. header file) for those classes.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
