
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, dbus, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "0.15.5-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/0.15.5-1.tar.gz";
    name = "0.15.5-1.tar.gz";
    sha256 = "db9915e61c7d083039943fbab37e24d53709b8237ac97f026b55b3e4ce84a30d";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot Raconteur ROS Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
