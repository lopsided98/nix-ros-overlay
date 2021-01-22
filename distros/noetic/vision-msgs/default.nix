
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosunit, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-vision-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/Kukanani/vision_msgs-release/archive/release/noetic/vision_msgs/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "a2fe139f1c97bb56e6d891da6881080d5f8d5b31190d9f3db5fcf7f6bc462974";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for interfacing with various computer vision pipelines, such as
    object detectors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
