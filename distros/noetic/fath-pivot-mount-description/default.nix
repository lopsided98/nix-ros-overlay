
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-fath-pivot-mount-description";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/fath_pivot_mount_description-release/archive/release/noetic/fath_pivot_mount_description/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "dfa286a7988dce4a8466f53ccb233e3d4055b649f3874466a681342cee84c77f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Macro for adding an adjustable, fath pivot mount used for cameras and other sensors'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
