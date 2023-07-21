
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-noetic-nfc-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nfc_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "8ac2499461ec2b257542b5c4ab8d9c8dfcdfac3f6ab42dc342ec95fdd9754138";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nfc_ros package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
