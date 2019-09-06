
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, image-transport, sensor-msgs, catkin, roscpp, message-generation, visp, resource-retriever, nodelet, rospy, std-msgs, message-runtime, image-proc, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-tracker";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_tracker/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "99cf6fac5f69483e1ef18bf59e7eef02bbccce9eb82758931d7be1988da526ce";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs roscpp rospy message-generation visp resource-retriever nodelet dynamic-reconfigure std-msgs image-proc tf geometry-msgs ];
  propagatedBuildInputs = [ image-proc image-transport sensor-msgs roscpp message-generation std-msgs resource-retriever message-runtime rospy nodelet visp dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Wraps the ViSP moving edge tracker provided by the ViSP visual
    servoing library into a ROS package.

    This computer vision algorithm computes the pose (i.e. position
    and orientation) of an object in an image. It is fast enough to
    allow object online tracking using a camera.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
