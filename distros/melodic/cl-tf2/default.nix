
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-transforms-stamped, cl-utils, roslisp, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-tf2";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf2/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "79a0f1f28598841bfb2d752b6229cee11aa0edb6e379f7e20607a3a682533ba3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-lisp cl-transforms-stamped cl-utils roslisp tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
