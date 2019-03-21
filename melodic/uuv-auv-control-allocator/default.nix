
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-auv-control-allocator";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_auv_control_allocator/0.6.10-0.tar.gz;
    sha256 = "d1b447de181bf53594006e902a67f5c26a674da656123cfedf6da344a6ca2711";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Optimal allocation of forces and torques to thruster and fins of AUVs'';
    #license = lib.licenses.Apache-2.0;
  };
}
