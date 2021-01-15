
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamixel-sdk, libyamlcpp, robotis-controller, roscpp, std-msgs, thormang3-base-module, thormang3-offset-tuner-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-server";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_offset_tuner_server/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "55295d0916ff373d54812e77783b2561f07bd48cd96aa97b18b4c6e0a0e0878d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamixel-sdk libyamlcpp robotis-controller roscpp std-msgs thormang3-base-module thormang3-offset-tuner-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The offset_tuner_server package'';
    license = with lib.licenses; [ asl20 ];
  };
}
