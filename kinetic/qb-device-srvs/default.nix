
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, catkin, message-generation, message-runtime, qb-device-msgs }:
buildRosPackage {
  pname = "ros-kinetic-qb-device-srvs";
  version = "2.0.1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/kinetic/qb_device_srvs/2.0.1-0.tar.gz;
    sha256 = "06532b026d7d5803e1cf3499ade82c92c3be2c6d1f32b80cf3914ced46a04859";
  };

  buildInputs = [ std-srvs message-generation qb-device-msgs ];
  propagatedBuildInputs = [ std-srvs message-runtime qb-device-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the device-independent custom ROS services for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
