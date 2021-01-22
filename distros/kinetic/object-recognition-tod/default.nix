
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, ecto, ecto-opencv, ecto-openni, eigen, object-recognition-core, opencv-candidate }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-tod";
  version = "0.5.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_tod-release/archive/release/kinetic/object_recognition_tod/0.5.6-0.tar.gz";
    name = "0.5.6-0.tar.gz";
    sha256 = "5dc450600dc5efc57ce501d9e67d3cc5a2520388438264af655f653268f25515";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules eigen ];
  propagatedBuildInputs = [ ecto ecto-opencv ecto-openni object-recognition-core opencv-candidate ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Textured Object Recognition a standard bag of features approach'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
