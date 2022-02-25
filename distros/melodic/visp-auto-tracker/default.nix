
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libdmtx, message-filters, resource-retriever, roscpp, sensor-msgs, std-msgs, usb-cam, visp, visp-bridge, visp-tracker, zbar }:
buildRosPackage {
  pname = "ros-melodic-visp-auto-tracker";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_auto_tracker/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "b948414716d7f747a63aeeaf042eddf7065551773c8ffccaa836ea1ebdde6839";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs libdmtx message-filters resource-retriever roscpp sensor-msgs std-msgs usb-cam visp visp-bridge visp-tracker zbar ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Online automated pattern-based object tracker relying on visual servoing.

    visp_auto_tracker wraps model-based trackers provided by ViSP visual
    servoing library into a ROS package. The tracked object should have a
    QRcode, Flash code, or April tag pattern. Based on the pattern, the object is
    automaticaly detected. The detection allows then to initialise the
    model-based trackers. When lost of tracking achieves a new detection
    is performed that will be used to re-initialize the tracker.

    This computer vision algorithm computes the pose (i.e. position and
    orientation) of an object in an image. It is fast enough to allow
    object online tracking using a camera.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
