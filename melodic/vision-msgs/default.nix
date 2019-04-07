
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-vision-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/Kukanani/vision_msgs-release/archive/release/melodic/vision_msgs/0.0.1-0.tar.gz;
    sha256 = "aea7d0a539a76bbd0072f74bb3c7ebc0a7f3b3277963f8d696de42a5c4066e90";
  };

  buildInputs = [ message-generation message-runtime std-msgs sensor-msgs geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for interfacing with various computer vision pipelines, such as
    object detectors.'';
    #license = lib.licenses.Apache License 2.0;
  };
}
