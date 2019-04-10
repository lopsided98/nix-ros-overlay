
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, trajectory-msgs, catkin, message-generation, message-runtime, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mav-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/lunar/mav_msgs/3.3.2-0.tar.gz;
    sha256 = "422829180c88848a21f906377e16fe781bdf4776af267ccb043bc067b1d3b296";
  };

  buildInputs = [ message-generation cmake-modules eigen std-msgs trajectory-msgs geometry-msgs ];
  propagatedBuildInputs = [ message-runtime eigen std-msgs trajectory-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for communicating with rotary wing MAVs'';
    #license = lib.licenses.ASL 2.0;
  };
}
