
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-driver-msgs";
  version = "0.7.3-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_driver_msgs/0.7.3-2.tar.gz";
    name = "0.7.3-2.tar.gz";
    sha256 = "b6ff3e6465f484a087dd50cc62b84b57880f35a59f5fcfc9220c1e9bcb1fdeb2";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_driver_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
