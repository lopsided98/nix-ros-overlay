
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ecto-pcl, meshlab, cmake-modules, ecto, catkin, object-recognition-core, opencv-candidate, ecto-image-pipeline }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-reconstruction";
  version = "0.3.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_reconstruction-release/archive/release/kinetic/object_recognition_reconstruction/0.3.6-0.tar.gz";
    name = "0.3.6-0.tar.gz";
    sha256 = "4f670fb39bcd5753c409b409396a0229669dcf0a82a6ce953f5c3eaaf765cc69";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs cmake-modules ecto object-recognition-core ecto-image-pipeline opencv-candidate ecto-pcl ];
  propagatedBuildInputs = [ ecto-pcl meshlab ecto object-recognition-core opencv-candidate ecto-image-pipeline ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''basic 3d reconstruction of an object from aligned Kinect data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
