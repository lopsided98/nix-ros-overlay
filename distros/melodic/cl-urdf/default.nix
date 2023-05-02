
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-melodic-cl-urdf";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_urdf/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "5cc45486503574347b77702b8c4b1d93aa2bbbada93bd55cc1aca2c91112e9ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-transforms roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
