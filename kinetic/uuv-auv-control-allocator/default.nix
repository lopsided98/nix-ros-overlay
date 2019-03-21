
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-auv-control-allocator";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_auv_control_allocator/0.6.10-0.tar.gz;
    sha256 = "627d0cbf25e6e1ad2c3ecf2fc8c8ba64f7bea2029d6c4e949d760b209310c8eb";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Optimal allocation of forces and torques to thruster and fins of AUVs'';
    #license = lib.licenses.Apache-2.0;
  };
}
