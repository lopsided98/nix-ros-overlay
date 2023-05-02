
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, cl-transforms-stamped, roslisp, tf }:
buildRosPackage {
  pname = "ros-melodic-cl-tf";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "029051ea1afb05980451a309a1206b7a537446515da15066375c46cace948d5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-transforms cl-transforms-stamped roslisp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
