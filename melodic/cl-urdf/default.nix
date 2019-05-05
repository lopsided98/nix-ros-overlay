
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms }:
buildRosPackage {
  pname = "ros-melodic-cl-urdf";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_urdf/0.2.10-0.tar.gz;
    sha256 = "d2b3ee247057cc0bee65484510f44e0342fff7fc1efcbfc4545914edf5efaa72";
  };

  propagatedBuildInputs = [ roslisp cl-transforms ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
