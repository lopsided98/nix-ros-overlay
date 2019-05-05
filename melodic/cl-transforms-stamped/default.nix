
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms-stamped";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms_stamped/0.2.10-0.tar.gz;
    sha256 = "8bb4cba56d66bb1a706d682930d296c70c682782f71a4843f623e386bec7c834";
  };

  propagatedBuildInputs = [ std-msgs roslisp cl-transforms geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
