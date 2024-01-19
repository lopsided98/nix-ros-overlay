
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-device-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-device-srvs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_srvs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "23c19e2a441ee45ebdc65fe1f770b51b3420a851b3981d48e9506c33b4b2cf89";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime qb-device-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
