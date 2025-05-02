
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-python-tutorial";
  version = "0.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/visualization_tutorials-release/archive/release/noetic/rviz_python_tutorial/0.11.2-1.tar.gz";
    name = "0.11.2-1.tar.gz";
    sha256 = "6cf8742748a09efe368e5acc37822ba40fadc4fc3a9b01c5f13a8488dfbff887";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Tutorials showing how to call into rviz internals from python scripts.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
