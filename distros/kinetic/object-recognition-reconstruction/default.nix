
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, ecto, ecto-image-pipeline, ecto-pcl, meshlab, object-recognition-core, opencv-candidate, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-reconstruction";
  version = "0.3.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_reconstruction-release/archive/release/kinetic/object_recognition_reconstruction/0.3.6-0.tar.gz";
    name = "0.3.6-0.tar.gz";
    sha256 = "4f670fb39bcd5753c409b409396a0229669dcf0a82a6ce953f5c3eaaf765cc69";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules sensor-msgs ];
  propagatedBuildInputs = [ ecto ecto-image-pipeline ecto-pcl meshlab object-recognition-core opencv-candidate ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''basic 3d reconstruction of an object from aligned Kinect data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
