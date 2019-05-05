
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, tf, cl-transforms-stamped }:
buildRosPackage {
  pname = "ros-melodic-cl-tf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf/0.2.10-0.tar.gz;
    sha256 = "babd91787b5937bb5e3d17353dd5bded7a26a75dd62c339f51a3a3d44e137dd0";
  };

  propagatedBuildInputs = [ tf roslisp cl-transforms cl-transforms-stamped ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
