
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-rr-openrover-driver-msgs";
  version = "0.7.3-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/kinetic/rr_openrover_driver_msgs/0.7.3-2.tar.gz";
    name = "0.7.3-2.tar.gz";
    sha256 = "b6ff3e6465f484a087dd50cc62b84b57880f35a59f5fcfc9220c1e9bcb1fdeb2";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_driver_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
