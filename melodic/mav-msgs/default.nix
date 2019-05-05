
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, trajectory-msgs, catkin, message-generation, message-runtime, eigen, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mav-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = https://github.com/ethz-asl/mav_comm-release/archive/release/melodic/mav_msgs/3.3.2-0.tar.gz;
    sha256 = "32087bfaf586c5c054af80c396360bbe6997998cec9f6ac44233020ce9ca4c43";
  };

  buildInputs = [ cmake-modules trajectory-msgs message-generation eigen std-msgs geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs message-runtime eigen std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for communicating with rotary wing MAVs'';
    license = with lib.licenses; [ "ASL 2.0" ];
  };
}
