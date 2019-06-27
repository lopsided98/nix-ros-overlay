
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-auv-control-allocator";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_auv_control_allocator/0.6.12-0.tar.gz;
    sha256 = "6ea9d62d42482ffdae287c9da98543f68b48ba4fab138e3945cdebd7525e103a";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Optimal allocation of forces and torques to thruster and fins of AUVs'';
    license = with lib.licenses; [ asl20 ];
  };
}
