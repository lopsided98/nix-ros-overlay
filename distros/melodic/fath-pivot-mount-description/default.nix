
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-fath-pivot-mount-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/fath_pivot_mount_description-release/archive/release/melodic/fath_pivot_mount_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "1c7057694a115d2619cc762d0aeb4d0f421d0f7bfba2a7e155d31d31dee4174d";
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
