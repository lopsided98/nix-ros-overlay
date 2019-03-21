
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libdmtx, visp-bridge, sensor-msgs, catkin, message-filters, zbar, visp, visp-tracker, resource-retriever, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-auto-tracker";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_auto_tracker/0.10.0-0.tar.gz;
    sha256 = "fb49ad259aeac43ef505b5bb02e6b0720e601ca257d59afeb7318d8f072f8c9f";
  };

  propagatedBuildInputs = [ libdmtx visp-bridge sensor-msgs message-filters zbar visp visp-tracker resource-retriever std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ libdmtx visp-bridge sensor-msgs catkin message-filters zbar visp visp-tracker resource-retriever std-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Online automated pattern-based object tracker relying on visual servoing.

    visp_auto_tracker wraps model-based trackers provided by ViSP visual
    servoing library into a ROS package. The tracked object should have a
    QRcode of Flash code pattern. Based on the pattern, the object is
    automaticaly detected. The detection allows then to initialise the
    model-based trackers. When lost of tracking achieves a new detection
    is performed that will be used to re-initialize the tracker.

    This computer vision algorithm computes the pose (i.e. position and
    orientation) of an object in an image. It is fast enough to allow
    object online tracking using a camera.'';
    #license = lib.licenses.GPLv2;
  };
}
