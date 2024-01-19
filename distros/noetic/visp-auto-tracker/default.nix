
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libdmtx, message-filters, resource-retriever, roscpp, sensor-msgs, std-msgs, usb-cam, visp, visp-bridge, visp-tracker, zbar }:
buildRosPackage {
  pname = "ros-noetic-visp-auto-tracker";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/visp_auto_tracker/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "b5792efe8fff571166a20087a56b195e41893ee5ee4ced8d761a6cbe9513f2d9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
