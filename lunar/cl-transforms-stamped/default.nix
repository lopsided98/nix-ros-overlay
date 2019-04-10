
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-cl-transforms-stamped";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/lunar/cl_transforms_stamped/0.2.10-0.tar.gz;
    sha256 = "cda03cf8b12cf84870ba0584709a753724ca60c67fa520f2455e58153d5e98fb";
  };

  propagatedBuildInputs = [ std-msgs roslisp cl-transforms geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    #license = lib.licenses.BSD;
  };
}
