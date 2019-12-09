
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, visualization-msgs, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-underwater-sensor-msgs";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_sensor_msgs/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "6f513f997476171784008d90480f099e9e8cdca04601f4f4cac841de53d56709";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation visualization-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs message-runtime visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for underwater robotics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
