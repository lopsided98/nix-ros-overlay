
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, image-proc, image-transport, message-generation, message-runtime, nodelet, resource-retriever, roscpp, rospy, sensor-msgs, std-msgs, tf, visp }:
buildRosPackage {
  pname = "ros-melodic-visp-tracker";
  version = "0.11.1-r1";

  src = fetchurl {
    url = "https://github.com/lagadic/vision_visp-release/archive/release/melodic/visp_tracker/0.11.1-1.tar.gz";
    name = "0.11.1-1.tar.gz";
    sha256 = "f8f5b6ded7bc1e1a83f5e8ad2787c9e096a4e4a347bcdc9cd33665e8383e4b75";
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
    license = with lib.licenses; [ gpl2 ];
  };
}
