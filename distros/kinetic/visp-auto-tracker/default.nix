
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libdmtx, message-filters, resource-retriever, roscpp, sensor-msgs, std-msgs, usb-cam, visp, visp-bridge, visp-tracker, zbar }:
buildRosPackage {
  pname = "ros-kinetic-visp-auto-tracker";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_auto_tracker/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "2a2a6b7ff20a7c24b6f2064102e243a1283dbe473765944f3b673b3e49c0e774";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs libdmtx message-filters resource-retriever roscpp sensor-msgs std-msgs usb-cam visp visp-bridge visp-tracker zbar ];
  nativeBuildInputs = [ catkin ];

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
    license = with lib.licenses; [ gpl2 ];
  };
}
