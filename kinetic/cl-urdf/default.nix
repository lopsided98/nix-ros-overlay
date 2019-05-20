
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms }:
buildRosPackage {
  pname = "ros-kinetic-cl-urdf";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_urdf/0.2.11-1.tar.gz;
    sha256 = "431f1f4e477ec9d82010d2f7df3f38bfda3dfa1cc62323d7dc54dbb2f95994fc";
  };

  propagatedBuildInputs = [ roslisp cl-transforms ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
