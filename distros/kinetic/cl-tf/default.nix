
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, cl-transforms-stamped, roslisp, tf }:
buildRosPackage {
  pname = "ros-kinetic-cl-tf";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_tf/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "0076f656c6f73ffde9c4d7ff536e6b45531405ef695fdabf46b58f22e2a49b7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-transforms cl-transforms-stamped roslisp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
