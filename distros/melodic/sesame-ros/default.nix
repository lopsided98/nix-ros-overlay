
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, libffi, message-generation, message-runtime, openssl }:
buildRosPackage {
  pname = "ros-melodic-sesame-ros";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/sesame_ros/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "d066f569e031178d47310e1b7761bd1f7e9d038843876838cb1fdc167e7b99ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv libffi message-generation openssl ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS API for Sesame smart lock'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
