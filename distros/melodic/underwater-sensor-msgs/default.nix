
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-underwater-sensor-msgs";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_sensor_msgs/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "a8e03f363c895d4cc1a498af6c461b9258af25b757e6352d38b5f2714614600d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for underwater robotics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
