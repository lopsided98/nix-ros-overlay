
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_control_msgs/0.6.10-0.tar.gz;
    sha256 = "0bfc715f1deec3262205d5c82aa99a9c10054d0d2f6e3467aaff63b7d60c9789";
  };

  propagatedBuildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The uuv_control_msgs package'';
    #license = lib.licenses.Apache-2.0;
  };
}
