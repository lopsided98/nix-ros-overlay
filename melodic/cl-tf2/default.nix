
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-lisp, catkin, cl-transforms-stamped, cl-utils, roslisp, tf2-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-tf2";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_tf2/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "3ef1ab744ff67f4a1b6a34194055decc9d0e6c7b5b53e5054ed00808661cbbdc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-lisp cl-transforms-stamped cl-utils roslisp tf2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Client implementation to use TF2 from Common Lisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
