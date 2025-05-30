
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, message-generation, message-runtime, rostest }:
buildRosPackage {
  pname = "ros-noetic-nfc-ros";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/nfc_ros/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "7755316f7f55702e8b1f692a1e03ec727f293df90a854ab5e4aebc3187778a8e";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The nfc_ros package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
