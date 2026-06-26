
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-pepper-meshes";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/jazzy/pepper_meshes/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "f9441b80fee8b6ab25a2ab36964b9c393a0e888eb40c03c6203fae1e9915dc28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meshes for the Pepper robot, for ROS2";
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
