
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, dbus, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "0.15.4-r1";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/0.15.4-1.tar.gz";
    name = "0.15.4-1.tar.gz";
    sha256 = "82a221b2e1b37291f02de6bd3962f0190de41f7de2f106bd953ce4fb3e58bfd1";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ bluez boost dbus libusb1 openssl python3 python3Packages.numpy zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot Raconteur ROS Package'';
    license = with lib.licenses; [ asl20 ];
  };
}
