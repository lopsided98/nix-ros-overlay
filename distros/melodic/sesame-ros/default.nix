
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl }:
buildRosPackage {
  pname = "ros-melodic-sesame-ros";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/sesame_ros/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "50245aa61649961bd2fd9ebd7b9c8a71548b362ad1d35a9e80cec7641b9b298b";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv libffi message-generation openssl ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
