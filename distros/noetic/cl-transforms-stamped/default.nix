
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cl-transforms, geometry-msgs, roslisp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cl-transforms-stamped";
  version = "0.2.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/noetic/cl_transforms_stamped/0.2.14-1.tar.gz";
    name = "0.2.14-1.tar.gz";
    sha256 = "9455b466eaca1765ff31ee517ec637d2e5980ca4332c2eda8c2c039e9c16b232";
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
