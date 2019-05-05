
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-vision-msgs";
  version = "0.0.1-r1";

  src = fetchurl {
    url = https://github.com/Kukanani/vision_msgs-release/archive/release/lunar/vision_msgs/0.0.1-1.tar.gz;
    sha256 = "1511bad2bba7906a24b69eb5ccd047027cd935928a9a8ad8eccee596b06e225b";
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
