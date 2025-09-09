
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtle-tf, turtle-tf2 }:
buildRosPackage {
  pname = "ros-noetic-geometry-tutorials";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/noetic/geometry_tutorials/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "bb880af229bf7a5fc494d4cbfb8b9eba0156f11defb5bb9ecf993121da1622b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtle-tf turtle-tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Metapackage of geometry tutorials ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
