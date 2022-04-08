
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-flir-camera-description";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/noetic/flir_camera_description/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "676469d8c3b0ba4fb88223eb948aaba9ecd1bbf1a74f93fdb12b30c1e36e202a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF descriptions for Flir cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
