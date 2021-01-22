
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-marker-drawing, hector-nav-msgs, hector-worldmodel-msgs, image-geometry, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-hector-object-tracker";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_worldmodel-release/archive/release/kinetic/hector_object_tracker/0.3.4-0.tar.gz";
    name = "0.3.4-0.tar.gz";
    sha256 = "ecd9277505a8ac1f834315da62eaef06597ea2762bfd4593db597517f442c793";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-marker-drawing hector-nav-msgs hector-worldmodel-msgs image-geometry roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_object_tracker is the core package of hector_worldmodel. It listens to percept message from
     detectors (e.g. heat signatures of persons or recognitions of other objects of interest in the
     scene) and fuses all information to a single worldmodel state. Objects will be tracked over time
     and their states can be influenced by a couple of services.

     The percept to object association problem is solved either automatically based on the Mahalanobis
     distance, or a unique object_id can be given in the percept message.

     If a hector_nav_msgs/GetDistanceToObstacle service is available, the object_tracker can optionally
     deduce the depth of objects in the scene by projection to the nearest obstacle (wall).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
