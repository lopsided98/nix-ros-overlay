
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vision-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/Kukanani/vision_msgs-release/archive/release/kinetic/vision_msgs/0.0.1-0.tar.gz;
    sha256 = "b4694f3ac1188fc6194b887c778a33b265bad66346dd17ffdd5f2080a067c0ba";
  };

  buildInputs = [ sensor-msgs message-generation message-runtime std-msgs geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs message-generation message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for interfacing with various computer vision pipelines, such as
    object detectors.'';
    license = with lib.licenses; [ asl20 ];
  };
}
