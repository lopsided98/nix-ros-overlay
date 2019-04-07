
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, trajectory-msgs, catkin, message-generation, message-runtime, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mav-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/kinetic/mav_msgs/3.3.2-0.tar.gz;
    sha256 = "42149201e47154ee860e8ce8f49d51c1160cd159a8ed8a385ffffb6e7dbd3831";
  };

  buildInputs = [ message-generation cmake-modules eigen std-msgs trajectory-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime eigen std-msgs trajectory-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for communicating with rotary wing MAVs'';
    #license = lib.licenses.ASL 2.0;
  };
}
