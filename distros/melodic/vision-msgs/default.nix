
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosunit, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-vision-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/Kukanani/vision_msgs-release/archive/release/melodic/vision_msgs/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "aea7d0a539a76bbd0072f74bb3c7ebc0a7f3b3277963f8d696de42a5c4066e90";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for interfacing with various computer vision pipelines, such as
    object detectors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
