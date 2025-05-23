
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, poco }:
buildRosPackage {
  pname = "ros-noetic-class-loader";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/class_loader-release/archive/release/noetic/class_loader/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "8957d4d0301e28d4e17d7b860b5340db9fd13648ecf7c32b3bc244f0ee2b0a51";
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
