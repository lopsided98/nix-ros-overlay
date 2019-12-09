
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, geometry-msgs, libdmtx, resource-retriever, std-msgs, visp-tracker, catkin, visp, roscpp, visp-bridge, zbar }:
buildRosPackage {
  pname = "ros-kinetic-visp-auto-tracker";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_auto_tracker/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "932449bfdec3f07765a70557d2c6262e1000dd4bd8e1d5766d31c9cffd8091e7";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs libdmtx geometry-msgs message-filters resource-retriever std-msgs visp-tracker visp roscpp visp-bridge zbar ];
  propagatedBuildInputs = [ sensor-msgs libdmtx geometry-msgs message-filters resource-retriever std-msgs visp-tracker visp roscpp visp-bridge zbar ];
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
