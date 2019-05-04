
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslisp, cl-transforms, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cl-transforms-stamped";
  version = "0.2.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/roslisp_common-release/archive/release/kinetic/cl_transforms_stamped/0.2.10-0.tar.gz;
    sha256 = "a548fdd29d7f94801a92f728288bca3529aae7b5d67ad4adb143546eec9b4562";
  };

  propagatedBuildInputs = [ std-msgs roslisp cl-transforms geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementation of TF datatypes'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
