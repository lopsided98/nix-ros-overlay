
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, roslisp }:
buildRosPackage {
  pname = "ros-melodic-cl-urdf";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_urdf/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "e674017e0a9183139ef8f5de07c0e5464116b3c85b8b3dba21b0c514a46682d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cl-transforms roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cl_urdf'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
