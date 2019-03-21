
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, opencv-candidate, cmake-modules, catkin, object-recognition-core, ecto-openni, ecto-opencv, ecto, eigen }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-tod";
  version = "0.5.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/object_recognition_tod-release/archive/release/kinetic/object_recognition_tod/0.5.6-0.tar.gz;
    sha256 = "5dc450600dc5efc57ce501d9e67d3cc5a2520388438264af655f653268f25515";
  };

  propagatedBuildInputs = [ opencv-candidate ecto-openni object-recognition-core ecto-opencv ecto ];
  nativeBuildInputs = [ opencv-candidate cmake-modules eigen catkin object-recognition-core ecto ];

  meta = {
    description = ''Textured Object Recognition a standard bag of features approach'';
    #license = lib.licenses.BSD;
  };
}
