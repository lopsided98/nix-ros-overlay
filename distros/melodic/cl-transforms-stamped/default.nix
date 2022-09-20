
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, geometry-msgs, roslisp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cl-transforms-stamped";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/melodic/cl_transforms_stamped/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "9cda9c3c92d59bf3de21f68f1da5f9c3e5babb07772be97bc033f6f26cde80ee";
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
