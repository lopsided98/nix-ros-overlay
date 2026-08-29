
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-pepper-meshes";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/kilted/pepper_meshes/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "c28988291447e860764ae118393e4b5d99a74c5bb555046e5d404216277146bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meshes for the Pepper robot, for ROS2";
    license = with lib.licenses; [ cc-by-nc-nd-40 ];
  };
}
