
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-lisp, catkin, roslisp, cl-transforms-stamped, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-cl-tf2";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf2/0.2.11-1.tar.gz;
    sha256 = "5044a8f65eff7eef03f6be69ce1fd2a761381deac628dcd9cd8c817d7b9df5ce";
  };

  propagatedBuildInputs = [ tf2-msgs actionlib-lisp roslisp cl-transforms-stamped cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
