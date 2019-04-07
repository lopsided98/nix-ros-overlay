
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, libyamlcpp, thormang3-base-module, catkin, robotis-controller, thormang3-offset-tuner-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-offset-tuner-server";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-Tools-release/archive/release/kinetic/thormang3_offset_tuner_server/0.2.0-0.tar.gz;
    sha256 = "55295d0916ff373d54812e77783b2561f07bd48cd96aa97b18b4c6e0a0e0878d";
  };

  buildInputs = [ libyamlcpp dynamixel-sdk thormang3-base-module std-msgs roscpp robotis-controller thormang3-offset-tuner-msgs ];
  propagatedBuildInputs = [ libyamlcpp dynamixel-sdk thormang3-base-module std-msgs roscpp robotis-controller thormang3-offset-tuner-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The offset_tuner_server package'';
    #license = lib.licenses.Apache 2.0;
  };
}
