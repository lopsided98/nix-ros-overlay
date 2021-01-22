
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-base-module-msgs";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_base_module_msgs/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "5b70e427adf158b2d360ce8bcd5befb71525a4150eaab26131b908b837b2090f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package includes ROS messages and services for the rh_p12_rn packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
