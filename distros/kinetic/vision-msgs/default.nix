
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosunit, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vision-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/Kukanani/vision_msgs-release/archive/release/kinetic/vision_msgs/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "b4694f3ac1188fc6194b887c778a33b265bad66346dd17ffdd5f2080a067c0ba";
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
