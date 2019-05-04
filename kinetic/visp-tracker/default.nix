
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, image-transport, sensor-msgs, catkin, roscpp, message-generation, visp, resource-retriever, nodelet, rospy, std-msgs, message-runtime, image-proc, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-visp-tracker";
  version = "0.10.0";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/kinetic/visp_tracker/0.10.0-0.tar.gz;
    sha256 = "e6ff6da2fb4fb508010133657ab883caf1736698055305225ae5720683e79f1a";
  };

  buildInputs = [ image-transport sensor-msgs roscpp rospy message-generation visp resource-retriever nodelet dynamic-reconfigure std-msgs image-proc tf geometry-msgs ];
  propagatedBuildInputs = [ image-transport sensor-msgs roscpp rospy message-generation visp message-runtime nodelet dynamic-reconfigure std-msgs resource-retriever image-proc tf geometry-msgs ];
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
