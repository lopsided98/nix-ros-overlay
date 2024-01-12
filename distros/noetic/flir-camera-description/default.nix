
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-description";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_description/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "e94ea3b56e203d360aaa44a38f200fc9be7fca967348efac5ec54caf237a97b8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Flir cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
