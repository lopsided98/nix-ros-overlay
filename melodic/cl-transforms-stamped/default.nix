
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms-stamped";
  version = "0.2.11-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms_stamped/0.2.11-1.tar.gz;
    sha256 = "9fd5acbf01164c3b2c07f509a312125aaaa4d09af67508f4726308d288b5d9fc";
  };

  propagatedBuildInputs = [ std-msgs roslisp cl-transforms geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
