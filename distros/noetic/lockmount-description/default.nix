
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-lockmount-description";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/lockmount_description-release/archive/release/noetic/lockmount_description/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "f5d300fd7edb3a9391a63e9aeae28547ccb83403a162ee7fef2e12487a2d2222";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Macro for adding an adjustable, locking mount used for cameras and other sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
