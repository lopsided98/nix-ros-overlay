
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-underwater-sensor-msgs";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_sensor_msgs/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "744d8c7ecf3b8262a69c7366f3263a6e2cb74b1277407de7a804862e4b34d033";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for underwater robotics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
