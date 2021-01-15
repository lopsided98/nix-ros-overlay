
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, couchdb, curl, ecto, ecto-image-pipeline, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-object-recognition-core";
  version = "0.6.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/object_recognition_core-release/archive/release/kinetic/object_recognition_core/0.6.7-0.tar.gz";
    name = "0.6.7-0.tar.gz";
    sha256 = "2a1e83129053e512369073abc6bcd08e39d7d4f7887e921af93cfa59c526ff13";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ visualization-msgs ];
  propagatedBuildInputs = [ boost couchdb curl ecto ecto-image-pipeline sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''object_recognition_core contains tools to launch several recognition pipelines, train objects, store models ...'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
