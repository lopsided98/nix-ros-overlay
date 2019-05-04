
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms }:
buildRosPackage {
  pname = "ros-kinetic-cl-urdf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_urdf/0.2.10-0.tar.gz;
    sha256 = "735136364a06e0e98bb8a3a93d4dc458778a72b87a095b875e2a79487cfa300d";
  };

  propagatedBuildInputs = [ roslisp cl-transforms ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
