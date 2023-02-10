
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, dbus, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "0.16.0-r2";

  src = fetchurl {
    url = "https://github.com/robotraconteur-packaging/robotraconteur-ros-release/archive/release/noetic/robotraconteur/0.16.0-2.tar.gz";
    name = "0.16.0-2.tar.gz";
    sha256 = "b00b4e3e01787cad0d1263f45714043c7dcace192d4a51137ba416fba0f554ea";
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
