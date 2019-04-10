
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms }:
buildRosPackage {
  pname = "ros-lunar-cl-urdf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_urdf/0.2.10-0.tar.gz;
    sha256 = "cb01736b12c0fb941289cdaf06209f59931cf6ad4ab812a1121ed86108b1a7fb";
  };

  propagatedBuildInputs = [ roslisp cl-transforms ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    #license = lib.licenses.BSD;
  };
}
