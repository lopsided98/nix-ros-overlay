
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, message-generation, geometry-msgs, std-msgs, cmake-modules, catkin, eigen, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mav-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = "https://github.com/ethz-asl/mav_comm-release/archive/release/melodic/mav_msgs/3.3.2-0.tar.gz";
    name = "3.3.2-0.tar.gz";
    sha256 = "32087bfaf586c5c054af80c396360bbe6997998cec9f6ac44233020ce9ca4c43";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs geometry-msgs std-msgs cmake-modules eigen message-generation ];
  propagatedBuildInputs = [ trajectory-msgs geometry-msgs std-msgs eigen message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing messages for communicating with rotary wing MAVs'';
    license = with lib.licenses; [ asl20 ];
  };
}
