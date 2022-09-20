
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, joy-teleop, mrp2-description, robot-state-publisher, twist-mux, urg-node }:
buildRosPackage {
  pname = "ros-melodic-mrp2-bringup";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/mrp2_bringup/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "36a087e929d36c7dd111c98414745b12b6f7840be41c28b1eaea3966ac945efd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy joy-teleop mrp2-description robot-state-publisher twist-mux urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and configurations for starting MRP2 robot in a real environment.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
