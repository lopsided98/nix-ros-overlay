
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-melodic-cl-urdf";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_urdf/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "8fa0621108c3226d84f6ff36088c8fa3786387778ff598a0c4caf1eee4579ce5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cl-transforms roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
