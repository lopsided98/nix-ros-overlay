
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libdmtx, message-filters, resource-retriever, roscpp, sensor-msgs, std-msgs, visp, visp-bridge, visp-tracker, zbar }:
buildRosPackage {
  pname = "ros-melodic-visp-auto-tracker";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_auto_tracker/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "5104d94e90ea8520a8556fe6293a20f31f824c7a178d2a332f95b69c4c05ee48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs libdmtx message-filters resource-retriever roscpp sensor-msgs std-msgs visp visp-bridge visp-tracker zbar ];
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
