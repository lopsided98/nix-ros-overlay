
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, console-bridge, poco }:
buildRosPackage {
  pname = "ros-kinetic-class-loader";
  version = "0.3.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/class_loader-release/archive/release/kinetic/class_loader/0.3.9-0.tar.gz";
    name = "0.3.9-0.tar.gz";
    sha256 = "5733b84bec8e5a4da05b07d2f4594541a04a6e88d772e9d9a944776429f7d45b";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ boost console-bridge poco ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The class_loader package is a ROS-independent package for loading plugins during runtime and the foundation of the higher level ROS &quot;pluginlib&quot; library. class_loader utilizes the host operating system's runtime loader to open runtime libraries (e.g. .so/.dll files), introspect the library for exported plugin classes, and allows users to instantiate objects of said exported classes without the explicit declaration (i.e. header file) for those classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
