
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-std-srvs";
  version = "1.11.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm_msgs-release/archive/release/melodic/std_srvs/1.11.2-0.tar.gz";
    name = "1.11.2-0.tar.gz";
    sha256 = "ecc565aebf13d5afbfaf42a1fb8a31de29af19331ca76239ced87c10f14fc363";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common service definitions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
