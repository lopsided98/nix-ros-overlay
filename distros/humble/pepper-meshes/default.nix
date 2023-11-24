
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-pepper-meshes";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_meshes2-release/archive/release/humble/pepper_meshes/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "c6215328c2859b1e5f34ee2b919425f1af85650d3e3591314aef807c26404fb8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meshes for the Pepper robot, for ROS2'';
    license = with lib.licenses; [ "CC-BY-NC-ND-4.0" ];
  };
}
