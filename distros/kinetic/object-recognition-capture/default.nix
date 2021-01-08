
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ecto, ecto-image-pipeline, ecto-opencv, ecto-openni, ecto-ros, object-recognition-core }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-capture";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_capture-release/archive/release/kinetic/object_recognition_capture/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "a8071741c6d75abf5e8b0d9119a124f165cbef7f7a327789768ac87c3fb3d256";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ecto ecto-image-pipeline ecto-opencv ecto-openni ecto-ros object-recognition-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Capture is a set of tools to capture objects in 3D and perform odometry'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
