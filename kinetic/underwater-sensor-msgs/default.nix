
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, visualization-msgs, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-underwater-sensor-msgs";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/underwater_sensor_msgs/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "09e79419faaff652910292b12a85e36b44065acd3d2d3148d39d7c2d4b29a16f";
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
