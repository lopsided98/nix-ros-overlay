
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, proj, catkin, ecto, object-recognition-core, ecto-opencv }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-transparent-objects";
  version = "0.4.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_transparent_objects-release/archive/release/kinetic/object_recognition_transparent_objects/0.4.3-0.tar.gz";
    name = "0.4.3-0.tar.gz";
    sha256 = "547e753c67f40c949267ee6561e089c8107c009641abb060f9b2798b98b408a5";
  };

  buildType = "catkin";
  buildInputs = [ object-recognition-core proj ecto pcl-ros ];
  propagatedBuildInputs = [ pcl-ros proj ecto object-recognition-core ecto-opencv ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A technique to recognize and estimate poses of transparent objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
