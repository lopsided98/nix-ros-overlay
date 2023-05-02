
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-transforms-stamped, cl-utils, roslisp, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-tf2";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf2/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "868f9f843365455f1de8de5fca139ae87634ecbd13aa68b81b45ca0bbecba369";
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
