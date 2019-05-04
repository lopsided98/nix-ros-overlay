
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, message-generation, message-runtime, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-underwater-sensor-msgs";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/kinetic/underwater_sensor_msgs/1.4.1-0.tar.gz;
    sha256 = "09e79419faaff652910292b12a85e36b44065acd3d2d3148d39d7c2d4b29a16f";
  };

  buildInputs = [ std-msgs roscpp message-generation visualization-msgs ];
  propagatedBuildInputs = [ std-msgs visualization-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages for underwater robotics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
