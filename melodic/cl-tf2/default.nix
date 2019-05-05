
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-lisp, catkin, roslisp, cl-transforms-stamped, cl-utils }:
buildRosPackage {
  pname = "ros-melodic-cl-tf2";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf2/0.2.10-0.tar.gz;
    sha256 = "668068f24600290b0c5bc0d773d81ca3115f2085a80c58c6617f5467290b2a52";
  };

  propagatedBuildInputs = [ tf2-msgs actionlib-lisp roslisp cl-transforms-stamped cl-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
