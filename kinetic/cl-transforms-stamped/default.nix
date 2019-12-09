
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, roslisp, std-msgs, catkin, cl-transforms }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms-stamped";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms_stamped/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "0bab621259d0ffecc5d54ea0682567a1308c289ea658be4ca43c22072f013822";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-msgs cl-transforms geometry-msgs roslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
