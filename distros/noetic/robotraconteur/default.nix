
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, boost, catkin, dbus, libusb1, openssl, python3, python3Packages, zlib }:
buildRosPackage {
  pname = "ros-noetic-robotraconteur";
  version = "0.15.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robotraconteur-packaging";
        repo = "robotraconteur-ros-release";
        rev = "release/noetic/robotraconteur/0.15.5-1";
        sha256 = "sha256-jizu6zEKGpXLk8jRm0bXbqV0DbOS+bFHBFQy41rFMuU=";
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
