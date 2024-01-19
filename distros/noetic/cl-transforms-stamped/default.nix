
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, geometry-msgs, roslisp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cl-transforms-stamped";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_transforms_stamped/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "2eebde6e59a5b0355b86ef3ce9a2c84f527f61b019708463dc931509e4d50924";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-transforms geometry-msgs roslisp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
