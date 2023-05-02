
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, geometry-msgs, roslisp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms-stamped";
  version = "0.2.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms_stamped/0.2.15-1.tar.gz";
    name = "0.2.15-1.tar.gz";
    sha256 = "ca54d9574230ce3b929b6daf0d7ca0bc22288a7a0140ed990d607f58146d83dd";
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
