
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-device-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-qb-device-srvs";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_srvs/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "5a910644b51dd38a1ea98e864b4780d24f3d69eb0b78715d68e4c0e5f94f38ad";
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
