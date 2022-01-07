
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, image-proc, image-transport, message-generation, message-runtime, nodelet, resource-retriever, roscpp, rospy, sensor-msgs, std-msgs, tf, visp }:
buildRosPackage {
  pname = "ros-noetic-visp-tracker";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/noetic/visp_tracker/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "b5642e82a21c8dae985149f9dca3b9044bea1d40fe8a669b3a9a2e5569b9d971";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs image-proc image-transport message-generation message-runtime nodelet resource-retriever roscpp rospy sensor-msgs std-msgs tf visp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps the ViSP moving edge tracker provided by the ViSP visual
    servoing library into a ROS package.

    This computer vision algorithm computes the pose (i.e. position
    and orientation) of an object in an image. It is fast enough to
    allow object online tracking using a camera.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
