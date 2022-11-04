
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-auv-control-allocator";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_auv_control_allocator/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "4db21178544a59cd19888ae887ff0bd17b75737fd0972673c4314a6db1cf3482";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Optimal allocation of forces and torques to thruster and fins of AUVs'';
    license = with lib.licenses; [ asl20 ];
  };
}
